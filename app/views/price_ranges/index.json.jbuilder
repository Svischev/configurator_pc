json.array!(@price_ranges) do |price_range|
  json.extract! price_range, :name, :description, :min, :max
  json.url price_range_url(price_range, format: :json)
end
