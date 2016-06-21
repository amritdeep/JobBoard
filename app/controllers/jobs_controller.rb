class JobsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]

  def index
  	@job = Job.all
  end

  def new	
  end

end
