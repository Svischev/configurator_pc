class PriceRange < ActiveRecord::Base

	before_save do
		self.range = min.to_s + " - " + max.to_s
	end

end
