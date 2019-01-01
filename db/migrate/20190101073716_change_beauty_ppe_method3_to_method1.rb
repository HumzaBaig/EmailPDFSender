class ChangeBeautyPpeMethod3ToMethod1 < ActiveRecord::Migration[5.0]
  def change
    rename_column :influencer_reports, :beauty_ppe_method3, :beauty_ppe_method1 
  end
end
