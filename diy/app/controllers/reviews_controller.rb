class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review_upload = ReviewUpload.new
  end

  def create
    @project = Project.find(params[:project_id])
    # @review = Review.new(review_params)
    # @review.user = current_user
    # @review.project_id = @project.id

    @review = Review.where(project_id: @project.id, user_id: current_user.id).first_or_create(review_params)
    @review.content = review_params[:content]
    @review.time = review_params[:time]
    @review.cost = review_params[:cost]

    if @review.save
      #*** add flash messages for errors as well
      redirect_to project_path(@project), :notice => 'Review was successfully created.'
    else
      redirect_to project_path(@project)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @project = Project.find(@review.project_id)
    if @review.destroy
      redirect_to project_path(@project)
    else
      render :'new'
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
