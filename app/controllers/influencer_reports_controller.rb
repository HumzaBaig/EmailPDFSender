class InfluencerReportsController < ApplicationController

  def create
    @report = InfluencerReport.create!(influencerreport_params)
    # create engagementsObj using method in model
    # add mailer
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
                                             :fitness_ppe_method1,
                                             :fitness_ppe_method2,
                                             :food_ppe_method1,
                                             :food_ppe_method2,
                                             :fashion_ppe_method1,
                                             :fashion_ppe_method2,
                                             :photography_ppe_method1,
                                             :photography_ppe_method2,
                                             :kids_family_ppe_method1,
                                             :kids_family_ppe_method2,
                                             :travel_ppe_method1,
                                             :travel_ppe_method2,
                                             :beauty_ppe_method1,
                                             :beauty_ppe_method2,
                                             photos_attributes: [
                                               :industry,
                                               :likes,
                                               :comments
                                               ])
  end
end
