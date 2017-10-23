class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    Job.create(params.require(:job).permit(:title, :from, :to))

    redirect_to_ new_job_path
  end
end
