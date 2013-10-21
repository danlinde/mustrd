class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :description
    	t.integer :quantity
    	t.decimal  :price, :precision => 9, :scale => 2
    	t.timestamps
    end
  end
end
