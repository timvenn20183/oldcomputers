class CreateFieldoptions < ActiveRecord::Migration
  def change
    create_table :fieldoptions do |t|
      t.string :name
      t.text :note
      t.integer :itemfield_id
      t.string :slug

      t.timestamps null: false
    end
  end
end
