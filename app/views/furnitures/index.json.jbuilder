json.array!(@furnitures) do |furniture|
  json.extract! furniture, :id
  json.url furniture_url(furniture, format: :json)
end
