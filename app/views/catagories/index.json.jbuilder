json.array!(@catagories) do |catagory|
  json.extract! catagory, :id, :name, :description
  json.url catagory_url(catagory, format: :json)
end
