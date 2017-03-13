class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
      @articles = Article.recent
      @upcoming_events = Event.upcoming.ordered
      @jobs = Job.latest
  end
end
