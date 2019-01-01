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

  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i

  accepts_nested_attributes_for :photos

  def create_engagements
    
  end
end

# TODO: May need to create photos in here using: create_association!(attributes = {})
