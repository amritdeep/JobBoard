require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    xit "should list jobs post" do
    	get :index
    end


  end

end
