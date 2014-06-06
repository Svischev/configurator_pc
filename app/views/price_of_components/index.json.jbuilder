json.array!(@price_of_components) do |price_of_component|
  json.extract! price_of_component, :price_range_id, :price, :component, :full_name
  json.url price_of_component_url(price_of_component, format: :json)
end