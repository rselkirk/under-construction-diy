class ProjectsController < ApplicationController

  def index
    # this dislays all projects starting with the most recently created
    @projects = Project.all.order(created_at: :desc)
  end

  def new
    # keep these 2 instance variables - they are needed for the 'add new project' form to work
    @project = Project.new
    @project_upload = ProjectUpload.new
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
    params.require(:project).permit(
      :title,
      :summary,
      :instructions,
      :material,
      :time,
      :cost,
      :url,
      project_uploads_attributes: [:id, :project_id, :image_url]
    )
  end

end
