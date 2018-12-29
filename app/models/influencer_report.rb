class InfluencerReport < ApplicationRecord
  # model assocation
  has_many :photos, inverse_of: :influencerreport

  # validations
  validates_presence_of :instagram_handle,
                        :email,
                        :city,
                        :post_price_by_category,
                        :post_price_by_category_engagements,
                        :post_price_by_avg_engagements

  accepts_nested_attributes_for :photos
end
