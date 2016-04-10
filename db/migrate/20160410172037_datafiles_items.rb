class DatafilesItems < ActiveRecord::Migration
  def change
    create_table :datafiles_items, :id => false do |t|
      t.references :datafile, :item
    end

    add_index :datafiles_items, [:datafile_id, :item_id],
      name: "datafiles_items_index",
      unique: true
  end
end
