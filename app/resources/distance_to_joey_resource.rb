class DistanceToJoeyResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :restaurant_id, :integer
  attribute :minutes_walking, :integer

  # Direct associations

  # Indirect associations

end
