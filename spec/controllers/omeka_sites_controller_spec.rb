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

describe OmekaSitesController do

  # This should return the minimal set of attributes required to create a valid
  # OmekaSite. As you add validations to OmekaSite, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OmekaSitesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all omeka_sites as @omeka_sites" do
      omeka_site = OmekaSite.create! valid_attributes
      get :index, {}, valid_session
      assigns(:omeka_sites).should eq([omeka_site])
    end
  end

  describe "GET show" do
    it "assigns the requested omeka_site as @omeka_site" do
      omeka_site = OmekaSite.create! valid_attributes
      get :show, {:id => omeka_site.to_param}, valid_session
      assigns(:omeka_site).should eq(omeka_site)
    end
  end

  describe "GET new" do
    it "assigns a new omeka_site as @omeka_site" do
      get :new, {}, valid_session
      assigns(:omeka_site).should be_a_new(OmekaSite)
    end
  end

  describe "GET edit" do
    it "assigns the requested omeka_site as @omeka_site" do
      omeka_site = OmekaSite.create! valid_attributes
      get :edit, {:id => omeka_site.to_param}, valid_session
      assigns(:omeka_site).should eq(omeka_site)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OmekaSite" do
        expect {
          post :create, {:omeka_site => valid_attributes}, valid_session
        }.to change(OmekaSite, :count).by(1)
      end

      it "assigns a newly created omeka_site as @omeka_site" do
        post :create, {:omeka_site => valid_attributes}, valid_session
        assigns(:omeka_site).should be_a(OmekaSite)
        assigns(:omeka_site).should be_persisted
      end

      it "redirects to the created omeka_site" do
        post :create, {:omeka_site => valid_attributes}, valid_session
        response.should redirect_to(OmekaSite.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved omeka_site as @omeka_site" do
        # Trigger the behavior that occurs when invalid params are submitted
        OmekaSite.any_instance.stub(:save).and_return(false)
        post :create, {:omeka_site => { "title" => "invalid value" }}, valid_session
        assigns(:omeka_site).should be_a_new(OmekaSite)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OmekaSite.any_instance.stub(:save).and_return(false)
        post :create, {:omeka_site => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested omeka_site" do
        omeka_site = OmekaSite.create! valid_attributes
        # Assuming there are no other omeka_sites in the database, this
        # specifies that the OmekaSite created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OmekaSite.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => omeka_site.to_param, :omeka_site => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested omeka_site as @omeka_site" do
        omeka_site = OmekaSite.create! valid_attributes
        put :update, {:id => omeka_site.to_param, :omeka_site => valid_attributes}, valid_session
        assigns(:omeka_site).should eq(omeka_site)
      end

      it "redirects to the omeka_site" do
        omeka_site = OmekaSite.create! valid_attributes
        put :update, {:id => omeka_site.to_param, :omeka_site => valid_attributes}, valid_session
        response.should redirect_to(omeka_site)
      end
    end

    describe "with invalid params" do
      it "assigns the omeka_site as @omeka_site" do
        omeka_site = OmekaSite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OmekaSite.any_instance.stub(:save).and_return(false)
        put :update, {:id => omeka_site.to_param, :omeka_site => { "title" => "invalid value" }}, valid_session
        assigns(:omeka_site).should eq(omeka_site)
      end

      it "re-renders the 'edit' template" do
        omeka_site = OmekaSite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OmekaSite.any_instance.stub(:save).and_return(false)
        put :update, {:id => omeka_site.to_param, :omeka_site => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested omeka_site" do
      omeka_site = OmekaSite.create! valid_attributes
      expect {
        delete :destroy, {:id => omeka_site.to_param}, valid_session
      }.to change(OmekaSite, :count).by(-1)
    end

    it "redirects to the omeka_sites list" do
      omeka_site = OmekaSite.create! valid_attributes
      delete :destroy, {:id => omeka_site.to_param}, valid_session
      response.should redirect_to(omeka_sites_url)
    end
  end

end