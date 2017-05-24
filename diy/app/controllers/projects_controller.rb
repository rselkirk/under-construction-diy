class ProjectsController < ApplicationController

  def index
    @projects = Project.order(id: :desc).all
  end

  def new
  end
  
  def create
    @project = current_user.projects.new(project_params)

    if @project.save
      redirect_to user_path(current_user)
    else 
      render :new
    end
  end

  def show
    @project = Project.find params[:id]
    @project_uploads = @project.project_uploads
    @review = Review.new
    @project_status = ProjectStatus.find_by(project_id: @project.id)
    puts @project_status.inspect
  end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :summary, :instructions, :material, :time, :cost, :url)
  end

end
