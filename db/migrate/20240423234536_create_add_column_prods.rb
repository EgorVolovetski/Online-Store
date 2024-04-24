class CreateAddColumnProds < ActiveRecord::Migration[7.1]
  add_column :products, :categories_id, :integer
end
