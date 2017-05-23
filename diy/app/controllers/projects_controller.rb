class ProjectsController < ApplicationController

  def new
    @project = Project.new
    @project_upload = ProjectUpload.new
  end

  def create
    @project = current_user.projects.new(project_params)

    if @project.save
      # redirect_to user_path(current_user) #*** uncomment this after user_project.rb is corrected
      redirect_to :root #*** temporary redirect - change this later
    else
      render :new
    end
  end

  def show
    @project = Project.order(id: :desc).all
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
