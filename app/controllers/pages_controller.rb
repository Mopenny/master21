class PagesController < ApplicationController
  def index
    @jobs = Job.all
  end

  def home
  end

  def news
  end

end
