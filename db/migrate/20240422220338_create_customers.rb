class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :email
      t.string :password, limit: 20
      t.string :address
      t.string :phone
    end
  end
end
