class WebDesignAssignmentsController < ApplicationController
  before_filter :signed_in_user
  # GET /web_design_assignments
  # GET /web_design_assignments.json
  def index
    if current_user.admin
      @web_design_assignments = WebDesignAssignment.all
    else
      @web_design_assignments = current_user.web_design_assignments
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @web_design_assignments }
    end
  end

  # GET /web_design_assignments/1
  # GET /web_design_assignments/1.json
  def show
    if current_user.admin
      @web_design_assignment = WebDesignAssignment.find(params[:id])
    else
      @web_design_assignment = current_user.web_design_assignments.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @web_design_assignment }
    end
  end

  # GET /web_design_assignments/new
  # GET /web_design_assignments/new.json
  def new
    @web_design_assignment = WebDesignAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @web_design_assignment }
    end
  end

  # GET /web_design_assignments/1/edit
  def edit
    if current_user.admin
      @web_design_assignment = WebDesignAssignment.find(params[:id])
    else
      @web_design_assignment = current_user.web_design_assignments.find(params[:id])
    end
  end

  # POST /web_design_assignments
  # POST /web_design_assignments.json
  def create
    @web_design_assignment = WebDesignAssignment.new(params[:web_design_assignment])

    respond_to do |format|
      if @web_design_assignment.save
        format.html { redirect_to @web_design_assignment, notice: 'Web design assignment was successfully created.' }
        format.json { render json: @web_design_assignment, status: :created, location: @web_design_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @web_design_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /web_design_assignments/1
  # PUT /web_design_assignments/1.json
  def update
    if current_user.admin
      @web_design_assignment = WebDesignAssignment.find(params[:id])
    else
      @web_design_assignment = current_user.web_design_assignments.find(params[:id])
    end

    respond_to do |format|
      if @web_design_assignment.update_attributes(params[:web_design_assignment])
        format.html { redirect_to @web_design_assignment, notice: 'Web design assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @web_design_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_design_assignments/1
  # DELETE /web_design_assignments/1.json
  def destroy
    if current_user.admin
      @web_design_assignment = WebDesignAssignment.find(params[:id])
    else
      @web_design_assignment = current_user.web_design_assignments.find(params[:id])
    end

    @web_design_assignment.destroy

    respond_to do |format|
      format.html { redirect_to web_design_assignments_url }
      format.json { head :no_content }
    end
  end
end
