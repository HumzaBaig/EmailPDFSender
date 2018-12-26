class Photo < ApplicationRecord
  # model assocation
  belongs_to :influencer

  # validations
  validates_presence_of :industry, :likes, :comments
end
