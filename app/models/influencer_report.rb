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

  # Static Constant
  @@avg_cpe = {
    "Fitness": 0.18,
    "Food": 0.21,
    "Fashion": 0.15,
    "Photography": 0.20,
    "Kid/Family": 0.19,
    "Travel": 0.17,
    "Beauty": 0.14
  }

  def total_category_engagements(category)
    self.photos.reduce(0) do | total, photo |
      total + (photo.likes + photo.comments) if category == photo.industry
    end
  end

  def num_of_category_posts(category)
    self.photos.reduce(0) do | total, photo |
      total + 1 if category == photo.industry
    end
  end

  def category_method_one_ppe(category)
    @@avg_cpe[category] * self.total_category_engagements(category) / self.num_of_category_posts(category)
  end
end

# TODO: May need to create photos in here using: create_association!(attributes = {})
