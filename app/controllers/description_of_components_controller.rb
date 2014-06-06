class DescriptionOfComponentsController < ApplicationController
  before_action :set_description_of_component, only: [:show, :edit, :update, :destroy]

  # GET /description_of_components
  # GET /description_of_components.json
  def index
    @description_of_components = DescriptionOfComponent.all
  end

  # GET /description_of_components/1
  # GET /description_of_components/1.json
  def show
  end

  # GET /description_of_components/new
  def new
    @description_of_component = DescriptionOfComponent.new
  end

  # GET /description_of_components/1/edit
  def edit
  end

  # POST /description_of_components
  # POST /description_of_components.json
  def create
    @description_of_component = DescriptionOfComponent.new(description_of_component_params)

    respond_to do |format|
      if @description_of_component.save
        format.html { redirect_to @description_of_component, notice: 'Description of component was successfully created.' }
        format.json { render action: 'show', status: :created, location: @description_of_component }
      else
        format.html { render action: 'new' }
        format.json { render json: @description_of_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /description_of_components/1
  # PATCH/PUT /description_of_components/1.json
  def update
    respond_to do |format|
      if @description_of_component.update(description_of_component_params)
        format.html { redirect_to @description_of_component, notice: 'Description of component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @description_of_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /description_of_components/1
  # DELETE /description_of_components/1.json
  def destroy
    @description_of_component.destroy
    respond_to do |format|
      format.html { redirect_to description_of_components_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description_of_component
      @description_of_component = DescriptionOfComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_of_component_params
      params.require(:description_of_component).permit(:name, :rus_name, :description, :full_description)
    end
end
