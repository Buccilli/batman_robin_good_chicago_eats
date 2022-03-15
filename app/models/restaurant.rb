class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :distance_to_joeys,
             :dependent => :destroy

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    good_service
  end

end
