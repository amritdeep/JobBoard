class ApplicantController < ApplicationController
  def new
  	@job = Job.find(params[:job_id])
  	@applicant = @job.users.new
  end

  def create
  	@job = Job.find(params[:job_id])
  	@applicant = @job.users.build(applicant_params)
  	@applicant.role = "employer"
  	binding.pry
  	# @applicant.save #!(validate: false)
  	if @applicant.save
	   	flash[:success] = "Your Application is sent"
	  	redirect_to root_url
	else
  		flash[:notice] = "You have already applied"
  		redirect_to root_url
  	end

  end

  private

  def applicant_params
  	params.require(:user).permit(:first_name, :last_name, :phone, :email, :letter)
  end
end
