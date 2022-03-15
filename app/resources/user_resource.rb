class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :liked_dishes, :string
  attribute :desire_to_go_to_restaurant, :integer

  # Direct associations

  # Indirect associations
end
