json.array!(@selected_options_of_pcs) do |selected_options_of_pc|
  json.extract! selected_options_of_pc, :user_id, :description_of_pc_id, :price_range_id
  json.url selected_options_of_pc_url(selected_options_of_pc, format: :json)
end