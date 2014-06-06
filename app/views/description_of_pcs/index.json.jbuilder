json.array!(@description_of_pcs) do |description_of_pc|
  json.extract! description_of_pc, :name, :description, :hdd_percent_of_price,
																	 :motherboard_percent_of_price, :processor_percent_of_price,
																	 :ram_percent_of_price, :systemBlock_percent_of_price,
																	 :videoCard_percent_of_price
  json.url description_of_pc_url(description_of_pc, format: :json)
end
