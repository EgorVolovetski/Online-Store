class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.decimal :price
      t.integer :supplier_id
    end
  end
end
