json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :city, :phone_no, :reg_date, :email
  json.url customer_url(customer, format: :json)
end
