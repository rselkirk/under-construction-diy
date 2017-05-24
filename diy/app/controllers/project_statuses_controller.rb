class ProjectStatusesController < ApplicationController

  def new
    @project_status = ProjectStatus.new
  end

  def update
    project_id = params[:project_id]
    @status = ProjectStatus.where(project_id: project_id, user_id: current_user.id).first_or_create
    if params[:project_status].has_key?(:saves)
      @status.saves = !@status.saves
      @status.save!
    else 
      @status.completes = !@status.completes
      @status.save!
    end
  end
  
  private

  def project_status_params
    params.require(:project_status).permit(:completes, :saves)
  end
end
