class SearchController < ApplicationController
  def search
  
    if params[:q].nil?
      @projects = []
    else
     @projects = Project.search(params[:q]).page(params[:page]).records
    end
   
  end
end
