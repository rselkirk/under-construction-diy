class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review_upload = ReviewUpload.new
  end

  def create
    @project = Project.find(params[:project_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.project_id = @project.id

    if @review.save
      #*** add flash messages for errors as well
      redirect_to project_path(@project), :notice => 'Review was successfully created.'
    else
      # render :'projects/show' #*** fix this path?
      redirect_to :root #*** change this after testing
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @project = Project.find(@review.project_id)
    if @review.destroy
      redirect_to project_path(@project)
    else
      render :'projects/show' #*** fix this path?
    end
  end

  private

  def review_params
    params.require(:review).permit(
      :content,
      :time,
      :cost,
      :rating,
      review_uploads_attributes: [:id, :review_id, :image_url]
    )
  end

end
