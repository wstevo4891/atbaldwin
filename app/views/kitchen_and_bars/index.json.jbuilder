json.array!(@kitchen_and_bars) do |kitchen_and_bar|
  json.extract! kitchen_and_bar, :id
  json.url kitchen_and_bar_url(kitchen_and_bar, format: :json)
end
