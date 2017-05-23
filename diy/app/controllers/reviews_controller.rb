class ReviewsController < ApplicationController

  def new 
    @review = Review.new
  end
  
  def create
    @project = Project.find(params[:project_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.project_id = @project.id

    if @review.save
      redirect_to project_path(@project), notice: 'Review was successfully created.'
    else
      render :'projects/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @project = Project.find(@review.project_id)
    if @review.destroy
      redirect_to project_path(@project)
    else
      render :'projects/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :time, :cost, :rating)
  end
  
end
