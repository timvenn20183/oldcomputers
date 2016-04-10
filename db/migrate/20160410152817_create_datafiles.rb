class CreateDatafiles < ActiveRecord::Migration
  def change
    create_table :datafiles do |t|
      t.string :name
      t.text :note
      t.string :rawdatafile

      t.timestamps null: false
    end
  end
end
