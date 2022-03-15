require "rails_helper"

RSpec.describe "distance_to_joeys#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/distance_to_joeys/#{distance_to_joey.id}", payload
  end

  describe "basic update" do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    let(:payload) do
      {
        data: {
          id: distance_to_joey.id.to_s,
          type: "distance_to_joeys",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(DistanceToJoeyResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { distance_to_joey.reload.attributes }
    end
  end
end
