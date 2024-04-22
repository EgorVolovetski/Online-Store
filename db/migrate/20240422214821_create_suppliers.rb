class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :email
      t.string :password, limit: 20
      t.string :phone

      t.timestamps
    end
  end
end
