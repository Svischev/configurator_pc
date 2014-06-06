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

describe DescriptionOfPcsController do

  # This should return the minimal set of attributes required to create a valid
  # DescriptionOfPc. As you add validations to DescriptionOfPc, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DescriptionOfPcsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all description_of_pcs as @description_of_pcs" do
      description_of_pc = DescriptionOfPc.create! valid_attributes
      get :index, {}, valid_session
      assigns(:description_of_pcs).should eq([description_of_pc])
    end
  end

  describe "GET show" do
    it "assigns the requested description_of_pc as @description_of_pc" do
      description_of_pc = DescriptionOfPc.create! valid_attributes
      get :show, {:id => description_of_pc.to_param}, valid_session
      assigns(:description_of_pc).should eq(description_of_pc)
    end
  end

  describe "GET new" do
    it "assigns a new description_of_pc as @description_of_pc" do
      get :new, {}, valid_session
      assigns(:description_of_pc).should be_a_new(DescriptionOfPc)
    end
  end

  describe "GET edit" do
    it "assigns the requested description_of_pc as @description_of_pc" do
      description_of_pc = DescriptionOfPc.create! valid_attributes
      get :edit, {:id => description_of_pc.to_param}, valid_session
      assigns(:description_of_pc).should eq(description_of_pc)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DescriptionOfPc" do
        expect {
          post :create, {:description_of_pc => valid_attributes}, valid_session
        }.to change(DescriptionOfPc, :count).by(1)
      end

      it "assigns a newly created description_of_pc as @description_of_pc" do
        post :create, {:description_of_pc => valid_attributes}, valid_session
        assigns(:description_of_pc).should be_a(DescriptionOfPc)
        assigns(:description_of_pc).should be_persisted
      end

      it "redirects to the created description_of_pc" do
        post :create, {:description_of_pc => valid_attributes}, valid_session
        response.should redirect_to(DescriptionOfPc.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved description_of_pc as @description_of_pc" do
        # Trigger the behavior that occurs when invalid params are submitted
        DescriptionOfPc.any_instance.stub(:save).and_return(false)
        post :create, {:description_of_pc => { "name" => "invalid value" }}, valid_session
        assigns(:description_of_pc).should be_a_new(DescriptionOfPc)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DescriptionOfPc.any_instance.stub(:save).and_return(false)
        post :create, {:description_of_pc => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested description_of_pc" do
        description_of_pc = DescriptionOfPc.create! valid_attributes
        # Assuming there are no other description_of_pcs in the database, this
        # specifies that the DescriptionOfPc created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DescriptionOfPc.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => description_of_pc.to_param, :description_of_pc => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested description_of_pc as @description_of_pc" do
        description_of_pc = DescriptionOfPc.create! valid_attributes
        put :update, {:id => description_of_pc.to_param, :description_of_pc => valid_attributes}, valid_session
        assigns(:description_of_pc).should eq(description_of_pc)
      end

      it "redirects to the description_of_pc" do
        description_of_pc = DescriptionOfPc.create! valid_attributes
        put :update, {:id => description_of_pc.to_param, :description_of_pc => valid_attributes}, valid_session
        response.should redirect_to(description_of_pc)
      end
    end

    describe "with invalid params" do
      it "assigns the description_of_pc as @description_of_pc" do
        description_of_pc = DescriptionOfPc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DescriptionOfPc.any_instance.stub(:save).and_return(false)
        put :update, {:id => description_of_pc.to_param, :description_of_pc => { "name" => "invalid value" }}, valid_session
        assigns(:description_of_pc).should eq(description_of_pc)
      end

      it "re-renders the 'edit' template" do
        description_of_pc = DescriptionOfPc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DescriptionOfPc.any_instance.stub(:save).and_return(false)
        put :update, {:id => description_of_pc.to_param, :description_of_pc => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested description_of_pc" do
      description_of_pc = DescriptionOfPc.create! valid_attributes
      expect {
        delete :destroy, {:id => description_of_pc.to_param}, valid_session
      }.to change(DescriptionOfPc, :count).by(-1)
    end

    it "redirects to the description_of_pcs list" do
      description_of_pc = DescriptionOfPc.create! valid_attributes
      delete :destroy, {:id => description_of_pc.to_param}, valid_session
      response.should redirect_to(description_of_pcs_url)
    end
  end

end