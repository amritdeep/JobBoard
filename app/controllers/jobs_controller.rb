class JobsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]

  def index
  end

  def new
  end

end
