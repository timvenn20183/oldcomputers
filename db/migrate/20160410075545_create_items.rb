class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :collection_id
      t.string :name
      t.boolean :status, :default => 0
      t.integer :year
      t.float :value
      t.float :cost
      t.string :slug
      t.string :alphabet_letter
      t.string :reference
      t.text :note
      t.timestamps null: false
    end
  end
end

