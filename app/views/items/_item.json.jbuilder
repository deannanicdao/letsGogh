json.extract! item, :id, :title, :description, :price, :category, :availability, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
