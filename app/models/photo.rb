class Photo < ApplicationRecord
  # model assocation
  belongs_to :influencerreport

  # validations
  validates_presence_of :industry,
                        :likes,
                        :comments
end
