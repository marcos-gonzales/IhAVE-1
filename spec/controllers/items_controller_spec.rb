require 'rails_helper'

RSpec.describe ItemsController, :type => :controller do
	let(:location) { create(:location) }
  let(:user) { create :user } 
  before { sign_in user }


  describe "GET #index" do
    it "returns http success" do
      get :index, :location_id => location.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, location_id: location.id
      expect(response).to have_http_status(:success)
    end
  end
end
