require 'rails_helper'

RSpec.describe DistanceToJoey, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:restaurant) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
