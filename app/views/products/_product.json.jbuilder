json.extract! product, :id, :product_name, :description, :price, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
