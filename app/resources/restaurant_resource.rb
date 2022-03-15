class RestaurantResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :good_service, :string
  attribute :distance_to_joey, :integer
  attribute :price, :integer
  attribute :other_comments, :string
  attribute :cuisine, :string
  attribute :name, :string
  attribute :neighborhood, :string
  attribute :service_id, :integer
  attribute :added_by, :integer
  attribute :desire_to_go_to_restaurant, :integer

  # Direct associations

  # Indirect associations

end
