class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :tags_restaurants,
             :dependent => :destroy

  has_many   :owners,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
