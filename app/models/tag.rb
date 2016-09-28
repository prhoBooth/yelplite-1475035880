class Tag < ApplicationRecord
  # Direct associations

  has_many   :tags_restaurants,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
