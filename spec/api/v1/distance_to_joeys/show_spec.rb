require 'rails_helper'

RSpec.describe "distance_to_joeys#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/distance_to_joeys/#{distance_to_joey.id}", params: params
  end

  describe 'basic fetch' do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    it 'works' do
      expect(DistanceToJoeyResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('distance_to_joeys')
      expect(d.id).to eq(distance_to_joey.id)
    end
  end
end
