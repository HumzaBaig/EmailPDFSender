class AddColumnsToInfluencerReportTable < ActiveRecord::Migration[5.0]
  def change
    add_column :influencer_reports, :fitness_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :fitness_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :food_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :food_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :fashion_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :fashion_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :photography_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :photography_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :kids_family_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :kids_family_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :travel_ppe_method1, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :travel_ppe_method2, :decimal, precision: 4, scale: 2

    add_column :influencer_reports, :beauty_ppe_method2, :decimal, precision: 4, scale: 2
    add_column :influencer_reports, :beauty_ppe_method3, :decimal, precision: 4, scale: 2
  end
end
