require 'rails_helper'

RSpec.describe "distance_to_joeys#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/distance_to_joeys/#{distance_to_joey.id}"
  end

  describe 'basic destroy' do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    it 'updates the resource' do
      expect(DistanceToJoeyResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { DistanceToJoey.count }.by(-1)
      expect { distance_to_joey.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
