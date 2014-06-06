require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PriceOfComponentsController do

  # This should return the minimal set of attributes required to create a valid
  # PriceOfComponent. As you add validations to PriceOfComponent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "price_range_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PriceOfComponentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all price_of_components as @price_of_components" do
      price_of_component = PriceOfComponent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:price_of_components).should eq([price_of_component])
    end
  end

  describe "GET show" do
    it "assigns the requested price_of_component as @price_of_component" do
      price_of_component = PriceOfComponent.create! valid_attributes
      get :show, {:id => price_of_component.to_param}, valid_session
      assigns(:price_of_component).should eq(price_of_component)
    end
  end

  describe "GET new" do
    it "assigns a new price_of_component as @price_of_component" do
      get :new, {}, valid_session
      assigns(:price_of_component).should be_a_new(PriceOfComponent)
    end
  end

  describe "GET edit" do
    it "assigns the requested price_of_component as @price_of_component" do
      price_of_component = PriceOfComponent.create! valid_attributes
      get :edit, {:id => price_of_component.to_param}, valid_session
      assigns(:price_of_component).should eq(price_of_component)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PriceOfComponent" do
        expect {
          post :create, {:price_of_component => valid_attributes}, valid_session
        }.to change(PriceOfComponent, :count).by(1)
      end

      it "assigns a newly created price_of_component as @price_of_component" do
        post :create, {:price_of_component => valid_attributes}, valid_session
        assigns(:price_of_component).should be_a(PriceOfComponent)
        assigns(:price_of_component).should be_persisted
      end

      it "redirects to the created price_of_component" do
        post :create, {:price_of_component => valid_attributes}, valid_session
        response.should redirect_to(PriceOfComponent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved price_of_component as @price_of_component" do
        # Trigger the behavior that occurs when invalid params are submitted
        PriceOfComponent.any_instance.stub(:save).and_return(false)
        post :create, {:price_of_component => { "price_range_id" => "invalid value" }}, valid_session
        assigns(:price_of_component).should be_a_new(PriceOfComponent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PriceOfComponent.any_instance.stub(:save).and_return(false)
        post :create, {:price_of_component => { "price_range_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested price_of_component" do
        price_of_component = PriceOfComponent.create! valid_attributes
        # Assuming there are no other price_of_components in the database, this
        # specifies that the PriceOfComponent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PriceOfComponent.any_instance.should_receive(:update).with({ "price_range_id" => "1" })
        put :update, {:id => price_of_component.to_param, :price_of_component => { "price_range_id" => "1" }}, valid_session
      end

      it "assigns the requested price_of_component as @price_of_component" do
        price_of_component = PriceOfComponent.create! valid_attributes
        put :update, {:id => price_of_component.to_param, :price_of_component => valid_attributes}, valid_session
        assigns(:price_of_component).should eq(price_of_component)
      end

      it "redirects to the price_of_component" do
        price_of_component = PriceOfComponent.create! valid_attributes
        put :update, {:id => price_of_component.to_param, :price_of_component => valid_attributes}, valid_session
        response.should redirect_to(price_of_component)
      end
    end

    describe "with invalid params" do
      it "assigns the price_of_component as @price_of_component" do
        price_of_component = PriceOfComponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PriceOfComponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => price_of_component.to_param, :price_of_component => { "price_range_id" => "invalid value" }}, valid_session
        assigns(:price_of_component).should eq(price_of_component)
      end

      it "re-renders the 'edit' template" do
        price_of_component = PriceOfComponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PriceOfComponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => price_of_component.to_param, :price_of_component => { "price_range_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested price_of_component" do
      price_of_component = PriceOfComponent.create! valid_attributes
      expect {
        delete :destroy, {:id => price_of_component.to_param}, valid_session
      }.to change(PriceOfComponent, :count).by(-1)
    end

    it "redirects to the price_of_components list" do
      price_of_component = PriceOfComponent.create! valid_attributes
      delete :destroy, {:id => price_of_component.to_param}, valid_session
      response.should redirect_to(price_of_components_url)
    end
  end

end
