require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

  # location = FactoryGirl.new :location
  let(:location) { create(:location) }
  let(:user) { create :user } 
  before { sign_in user }

  describe "GET #show" do

    it "assigns requested location to @location" do
      location = create(:location)
      get :show, id: location
      expect(assigns(:location)).to eq location
    end


    it "returns http success" do
      get :show, id: location.id
      expect(response).to have_http_status(:success)
    end
    
  end

end
