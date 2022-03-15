require "rails_helper"

RSpec.describe "distance_to_joeys#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/distance_to_joeys", params: params
  end

  describe "basic fetch" do
    let!(:distance_to_joey1) { create(:distance_to_joey) }
    let!(:distance_to_joey2) { create(:distance_to_joey) }

    it "works" do
      expect(DistanceToJoeyResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["distance_to_joeys"])
      expect(d.map(&:id)).to match_array([distance_to_joey1.id,
                                          distance_to_joey2.id])
    end
  end
end
