class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    puts @projects.inspect
  end

  def new
    @projects = Project.order(id: :desc).all
  end
  
  def create

    @project = current_user.projects.new(project_params)

    if @project.save
      redirect_to user_path(current_user)
    else 
      render :new
    end
  end

  private
  
  def project_params
    params.require(:project).permit(:title, :summary, :instructions, :material, :time, :cost, :url)
  end

end
