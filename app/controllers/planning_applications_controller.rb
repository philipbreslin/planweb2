class PlanningApplicationsController < ApplicationController
  before_filter :signed_in_user
  # GET /planning_applications
  # GET /planning_applications.json
  def index
    if current_user.admin
      @planning_applications = PlanningApplication.all
    else
      @planning_applications = current_user.planning_applications
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @planning_applications }
    end
  end

  # GET /planning_applications/1
  # GET /planning_applications/1.json
  def show
    if current_user.admin
      @planning_application = PlanningApplication.find(params[:id])
    else
      @planning_application = current_user.planning_applications.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planning_application }
    end
  end

  # GET /planning_applications/new
  # GET /planning_applications/new.json
  def new
    @planning_application = PlanningApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @planning_application }
    end
  end

  # GET /planning_applications/1/edit
  def edit
    if current_user.admin
      @planning_application = PlanningApplication.find(params[:id])
    else
      @planning_application = current_user.planning_applications.find(params[:id])
    end
  end

  # POST /planning_applications
  # POST /planning_applications.json
  def create
    @planning_application = current_user.planning_applications.new(params[:planning_application])

    respond_to do |format|
      if @planning_application.save
        flash[:success] = "Planning application was successfully created"
        redirect_to root_url
      else
        render 'welcome/home'
      end
    end
  end

  # PUT /planning_applications/1
  # PUT /planning_applications/1.json
  def update
    if current_user.admin
      @planning_application = PlanningApplication.find(params[:id])
    else
      @planning_application = current_user.planning_applications.find(params[:id])
    end

    respond_to do |format|
      if @planning_application.update_attributes(params[:planning_application])
        format.html { redirect_to @planning_application, notice: 'Planning application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planning_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planning_applications/1
  # DELETE /planning_applications/1.json
  def destroy
    if current_user.admin
      @planning_application = PlanningApplication.find(params[:id])
    else
      @planning_application = current_user.planning_applications.find(params[:id])
    end

    @planning_application.destroy

    respond_to do |format|
      format.html { redirect_to planning_applications_url }
      format.json { head :no_content }
    end
  end
end
