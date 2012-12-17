class MakeShoutsPolymorphic < ActiveRecord::Migration
  def up
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer
    
    select_all("SELECT * FROM shouts").each do |shout|
      text_shout_id = insert <<-SQL
        INSERT INTO shouts(body)
        VALUES (#{quote(shout[:body])})
      SQL
      
      update <<-SQL
        UPDATE shouts
        SET content_type = 'TextShout',
            content_id = #{text_shout_id}
        WHERE id = #{shout[:id]}
      SQL
    end
    
    remove_column :shouts, :body
  end

  def down
    add_column :shouts, :body, :string
    
    select_all("SELECT * FROM shouts").each do |shout|
      body = select_value <<-SQL
        SELECT body FROM text_shouts
        WHERE id = #{shout[:content_id]})
      SQL
      
      update <<-SQL
        UPDATE shouts
        SET body = #{quote(body)}
        WHERE id = #{shout[:id]}
      SQL
    end
    
    delete("DELETE FROM text_shouts")
    
    remove_column :shouts, :content_id
    remove_column :shouts, :content_type
  end
end
