require "rails_helper"

RSpec.describe Service, type: :model do
  describe "Direct Associations" do
    it { should have_many(:restaurants) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
