json.array!(@description_of_components) do |description_of_component|
  json.extract! description_of_component, :name, :description
  json.url description_of_component_url(description_of_component, format: :json)
end