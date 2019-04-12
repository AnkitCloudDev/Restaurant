json.extract! order_history, :id, :product_id, :order_id, :unit_price, :quantity, :total_price, :created_at, :updated_at
json.url order_history_url(order_history, format: :json)
