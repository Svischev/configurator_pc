class InformationController < ApplicationController

  def show

		@description_of_components = DescriptionOfComponent.all		

		if !params[:id].nil?
			@description_of_component = DescriptionOfComponent.find(params[:id])
		else
			#@description_of_component = DescriptionOfComponent.first
		end	

  end

end
