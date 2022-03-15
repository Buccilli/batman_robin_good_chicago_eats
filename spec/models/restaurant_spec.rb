require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:service) }

    it { should have_many(:distance_to_joeys) }

    it { should have_many(:dishes) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
