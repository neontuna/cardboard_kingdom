json.extract! product, :id, :title, :description, :price_cents, :created_at, :updated_at
json.url product_url(product, format: :json)
