class CreateImagefiles < ActiveRecord::Migration
  def change
    create_table :imagefiles do |t|
      t.string :name
      t.text :note
      t.string :rawimagefile

      t.timestamps null: false
    end
  end
end
