class PriceOfComponentsController < ApplicationController
  before_action :set_price_of_component, only: [:show, :edit, :update, :destroy]

  # GET /price_of_components
  # GET /price_of_components.json
  def index
    @price_of_components = PriceOfComponent.all
  end

  # GET /price_of_components/1
  # GET /price_of_components/1.json
  def show
  end

  # GET /price_of_components/new
  def new
    @price_of_component = PriceOfComponent.new
  end

  # GET /price_of_components/1/edit
  def edit
  end

  # POST /price_of_components
  # POST /price_of_components.json
  def create
    @price_of_component = PriceOfComponent.new(price_of_component_params)

    respond_to do |format|
      if @price_of_component.save
        format.html { redirect_to @price_of_component, notice: 'Price of component was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_of_component }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_of_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_of_components/1
  # PATCH/PUT /price_of_components/1.json
  def update
    respond_to do |format|
      if @price_of_component.update(price_of_component_params)
        format.html { redirect_to @price_of_component, notice: 'Price of component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_of_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_of_components/1
  # DELETE /price_of_components/1.json
  def destroy
    @price_of_component.destroy
    respond_to do |format|
      format.html { redirect_to price_of_components_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_of_component
      @price_of_component = PriceOfComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_of_component_params
      params.require(:price_of_component).permit(:price_range_id, :price, :component, :full_name)
    end
end
