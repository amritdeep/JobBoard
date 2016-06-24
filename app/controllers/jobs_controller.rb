class JobsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]

  def index
  	@job = Job.all
  end

  def new
  	if current_user.role == "company"
  		@job = current_user.jobs.new
  	else
  		flash[:notice] = "You are not admin or company user"
  		render :index
  	end
  end

  def create
  	@job = current_user.jobs.build(job_param)
  	if @job.save
  		redirect_to action: "show"	, id: @job.id
  	else
  		flash[:notice] = "Require field"
  		render :new
  	end
  end

  def show
  end

  private

  def job_param
  	params.require(:job).permit(:title, :location, :company, :summary)
  end

end
