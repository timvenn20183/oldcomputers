class ItemsRelations < ActiveRecord::Migration
  def change
    create_table "items_relations", :force => true, :id => false do |t|
      t.integer "item_a_id", :null => false
      t.integer "item_b_id", :null => false
    end
  end
end
