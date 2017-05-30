class SearchController < ApplicationController

  def search
    
    if params[:q].nil?
      @projects = Project.includes(:reviews).all.order(created_at: :desc)
    else
      @projects = Project.search(params[:q]).page(params[:page]).records
    end
   
  end
end
