class ImagefilesItems < ActiveRecord::Migration
  def change
    create_table :imagefiles_items, :id => false do |t|
      t.references :imagefile, :item
    end

    add_index :imagefiles_items, [:imagefile_id, :item_id],
      name: "imagefiles_items_index",
      unique: true
  end
end
