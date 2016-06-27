require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  describe "GET #index" do
  	
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)

    end

    it "should list jobs post" do
    	job = create(:job)

    	get :index
      expect(response).to have_http_status(:success)
      expect(response).to be_success
    	expect(response).to render_template(:index)

    	expect(job.title).to eql("ROR Developer")
    	expect(job.location).to eql("TX")
    	expect(job.summary).to eql("ROR Developer")
    	expect(job.company).to eql("My company")
    end

  end

  describe "Authoriazed User" do



  end

end
