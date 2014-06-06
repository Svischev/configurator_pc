class SelectComponentsController < ApplicationController	
		
	def showStep1
		
	end
		
	def showStep2
		@price_ranges		    = PriceRange.all
			
	end
		
	def showStep3
		set_idSelectPriceRange(params[:idSelectPriceRange])	

		@description_of_pcs = DescriptionOfPc.all		
		
	end
		
	def showStep4		
		set_idSelectPc(params[:idSelectPc])		

		@price_range        = PriceRange.find(get_idSelectPriceRange())
		@description_of_pc  = DescriptionOfPc.find(get_idSelectPc())		
		
	end
		
end 
