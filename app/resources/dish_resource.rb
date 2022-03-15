class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :must_get, :string
  attribute :never_ever_again, :string
  attribute :restaurant_id, :integer
  attribute :distance_to_joey_id, :integer
  attribute :added_by, :integer

  # Direct associations

  # Indirect associations

end
