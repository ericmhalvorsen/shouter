class CreatePhotoShouts < ActiveRecord::Migration
  def change
    create_table :photo_shouts do |t|
      t.has_attached_file :image
    end
  end
end
