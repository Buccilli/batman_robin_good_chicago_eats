require 'rails_helper'

RSpec.describe DistanceToJoeyResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'distance_to_joeys',
          attributes: { }
        }
      }
    end

    let(:instance) do
      DistanceToJoeyResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { DistanceToJoey.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    let(:payload) do
      {
        data: {
          id: distance_to_joey.id.to_s,
          type: 'distance_to_joeys',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      DistanceToJoeyResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { distance_to_joey.reload.updated_at }
      # .and change { distance_to_joey.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    let(:instance) do
      DistanceToJoeyResource.find(id: distance_to_joey.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { DistanceToJoey.count }.by(-1)
    end
  end
end
