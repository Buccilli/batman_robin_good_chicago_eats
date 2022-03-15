require 'rails_helper'

RSpec.describe "distance_to_joeys#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/distance_to_joeys", payload
  end

  describe 'basic create' do
    let(:params) do
      {
        # ... your attrs here
      }
    end
    let(:payload) do
      {
        data: {
          type: 'distance_to_joeys',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(DistanceToJoeyResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { DistanceToJoey.count }.by(1)
    end
  end
end
