json.extract! customer, :id, :customer_name, :email, :password, :address, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
