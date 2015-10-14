json.array!(@products) do |product|
  json.extract! product, :id, :description, :price, :catagory, :order_line_id
  json.url product_url(product, format: :json)
end
