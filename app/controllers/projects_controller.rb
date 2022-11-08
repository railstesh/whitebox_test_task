class ProjectsController < ApplicationController
  before_action :set_project
  before_action :get_user

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
  end

  def create
    @project = Project.new(project_params.merge(user_id: @user.id))
    if @project.save
      redirect_to user_project_path(@user, @project), notice: "Project was successfully created." 
    else
      render 'new'
    end
  end

  def update
    if @project.update(project_params.merge(user_id: @user.id))
      redirect_to user_projects_path(@user, @project) , notice: "Project was successfully updated." 
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to user_projects_path(@user, @project)
  end

  private
   
  def get_user
    @user= User.find(params[:user_id])
  end
    
  def set_project
    @project = Project.find_by(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :status, :user_id)
  end

end
