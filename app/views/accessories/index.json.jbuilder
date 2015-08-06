json.array!(@accessories) do |accessory|
  json.extract! accessory, :id
  json.url accessory_url(accessory, format: :json)
end
