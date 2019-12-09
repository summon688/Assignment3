json.extract! product, :id, :Name, :Description, :image, :Price, :created_at, :updated_at
json.url product_url(product, format: :json)
