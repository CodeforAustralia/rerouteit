require "spec_helper"

describe TripsController do
  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end
end
