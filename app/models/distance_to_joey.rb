class DistanceToJoey < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    restaurant.to_s
  end
end
