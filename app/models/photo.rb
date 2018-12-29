class Photo < ApplicationRecord
  # model assocation
  belongs_to :influencerreport, inverse_of: :photos

  # validations
  validates_presence_of :industry,
                        :likes,
                        :comments
end
