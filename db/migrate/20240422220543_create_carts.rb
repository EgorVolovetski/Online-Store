class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :cart do |t|
      t.integer :product_id
      t.integer :quantity
    end
    add_foreign_key :cart, :products, column: :product_id, primary_key: :id
  end
end
