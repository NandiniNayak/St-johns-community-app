class SearchController < ApplicationController
    def index
    @events =Event.all
    
    if(params[:search])
      @events = Event.search(params[:search]).order("created_at DESC")
      @jobs = Job.search(params[:search])
    else
      @events = Event.all.order("created_at DESC")
      @jobs = Job.search(params[:search])
    end
  end
end