class CreateRolodexes < ActiveRecord::Migration
  def change
    create_table :rolodexes do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :tell
      t.text :history
      t.text :address
      t.string :slug
      t.integer :type, :default => 0
      t.timestamps null: false
    end
  end
end
