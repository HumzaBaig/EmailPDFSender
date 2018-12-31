class InfluencerReportsController < ApplicationController

  def create
    @report = InfluencerReport.create!(influencerreport_params)
    json_response(@report, :created)
  end

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
