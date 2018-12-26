class Influencer < ApplicationRecord
  # model association
  has_many :photos, dependent :destroy

  # validations
  validates_presence_of :instagram_handle, :email, :city
end
