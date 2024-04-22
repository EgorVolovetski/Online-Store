class CreateTableChanges < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :products, :suppliers, column: :supplier_id, primary_key: :id
    remove_column :suppliers, :created_at
    remove_column :suppliers, :updated_at
    rename_column :categories, :name, :category_name
  end
end
