class InfluencerReportsController < ApplicationController

  

  private

  def influencerreport_params
    params.require(:influencerreport).permit(:instagram_handle,
                                             :email,
                                             :city,
                                             :post_price_by_category,
                                             :post_price_by_category_engagements,
                                             :post_price_by_avg_engagements,
                                             photos_attributes: [
                                               :industry,
                                               :likes,
                                               :comments
                                               ])
  end
end
