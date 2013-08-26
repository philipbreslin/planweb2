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

describe PlanningApplicationsController do

  # This should return the minimal set of attributes required to create a valid
  # PlanningApplication. As you add validations to PlanningApplication, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlanningApplicationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all planning_applications as @planning_applications" do
      planning_application = PlanningApplication.create! valid_attributes
      get :index, {}, valid_session
      assigns(:planning_applications).should eq([planning_application])
    end
  end

  describe "GET show" do
    it "assigns the requested planning_application as @planning_application" do
      planning_application = PlanningApplication.create! valid_attributes
      get :show, {:id => planning_application.to_param}, valid_session
      assigns(:planning_application).should eq(planning_application)
    end
  end

  describe "GET new" do
    it "assigns a new planning_application as @planning_application" do
      get :new, {}, valid_session
      assigns(:planning_application).should be_a_new(PlanningApplication)
    end
  end

  describe "GET edit" do
    it "assigns the requested planning_application as @planning_application" do
      planning_application = PlanningApplication.create! valid_attributes
      get :edit, {:id => planning_application.to_param}, valid_session
      assigns(:planning_application).should eq(planning_application)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlanningApplication" do
        expect {
          post :create, {:planning_application => valid_attributes}, valid_session
        }.to change(PlanningApplication, :count).by(1)
      end

      it "assigns a newly created planning_application as @planning_application" do
        post :create, {:planning_application => valid_attributes}, valid_session
        assigns(:planning_application).should be_a(PlanningApplication)
        assigns(:planning_application).should be_persisted
      end

      it "redirects to the created planning_application" do
        post :create, {:planning_application => valid_attributes}, valid_session
        response.should redirect_to(PlanningApplication.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved planning_application as @planning_application" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlanningApplication.any_instance.stub(:save).and_return(false)
        post :create, {:planning_application => {}}, valid_session
        assigns(:planning_application).should be_a_new(PlanningApplication)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlanningApplication.any_instance.stub(:save).and_return(false)
        post :create, {:planning_application => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested planning_application" do
        planning_application = PlanningApplication.create! valid_attributes
        # Assuming there are no other planning_applications in the database, this
        # specifies that the PlanningApplication created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PlanningApplication.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => planning_application.to_param, :planning_application => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested planning_application as @planning_application" do
        planning_application = PlanningApplication.create! valid_attributes
        put :update, {:id => planning_application.to_param, :planning_application => valid_attributes}, valid_session
        assigns(:planning_application).should eq(planning_application)
      end

      it "redirects to the planning_application" do
        planning_application = PlanningApplication.create! valid_attributes
        put :update, {:id => planning_application.to_param, :planning_application => valid_attributes}, valid_session
        response.should redirect_to(planning_application)
      end
    end

    describe "with invalid params" do
      it "assigns the planning_application as @planning_application" do
        planning_application = PlanningApplication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlanningApplication.any_instance.stub(:save).and_return(false)
        put :update, {:id => planning_application.to_param, :planning_application => {}}, valid_session
        assigns(:planning_application).should eq(planning_application)
      end

      it "re-renders the 'edit' template" do
        planning_application = PlanningApplication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlanningApplication.any_instance.stub(:save).and_return(false)
        put :update, {:id => planning_application.to_param, :planning_application => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested planning_application" do
      planning_application = PlanningApplication.create! valid_attributes
      expect {
        delete :destroy, {:id => planning_application.to_param}, valid_session
      }.to change(PlanningApplication, :count).by(-1)
    end

    it "redirects to the planning_applications list" do
      planning_application = PlanningApplication.create! valid_attributes
      delete :destroy, {:id => planning_application.to_param}, valid_session
      response.should redirect_to(planning_applications_url)
    end
  end

end
