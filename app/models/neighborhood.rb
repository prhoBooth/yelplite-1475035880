class Neighborhood < ApplicationRecord
  # Direct associations

  belongs_to :city

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
