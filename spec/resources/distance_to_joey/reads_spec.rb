require "rails_helper"

RSpec.describe DistanceToJoeyResource, type: :resource do
  describe "serialization" do
    let!(:distance_to_joey) { create(:distance_to_joey) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(distance_to_joey.id)
      expect(data.jsonapi_type).to eq("distance_to_joeys")
    end
  end

  describe "filtering" do
    let!(:distance_to_joey1) { create(:distance_to_joey) }
    let!(:distance_to_joey2) { create(:distance_to_joey) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: distance_to_joey2.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([distance_to_joey2.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:distance_to_joey1) { create(:distance_to_joey) }
      let!(:distance_to_joey2) { create(:distance_to_joey) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      distance_to_joey1.id,
                                      distance_to_joey2.id,
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      distance_to_joey2.id,
                                      distance_to_joey1.id,
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
