module SelectComponentsHelper

	def set_idSelectPc(idSelectPc)
		cookies.permanent[:idSelectPc] = idSelectPc
	end

	def get_idSelectPc()
		return cookies[:idSelectPc]
	end

	def set_idSelectPriceRange(idSelectPriceRange)
		cookies.permanent[:idSelectPriceRange] = idSelectPriceRange
	end

	def get_idSelectPriceRange()
		return cookies[:idSelectPriceRange]
	end

end
