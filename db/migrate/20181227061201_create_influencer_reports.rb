class CreateInfluencerReports < ActiveRecord::Migration[5.0]
  def change
    create_table :influencer_reports do |t|
      t.string :instagram_handle, null: false
      t.string :email, null: false
      t.string :city, null: false
      t.decimal :post_price_by_category, precision: 4, scale: 2, null: false
      t.decimal :post_price_by_category_engagements, precision: 4, scale: 2, null: false
      t.decimal :post_price_by_avg_engagements, precision: 4, scale: 2, null: false

      t.timestamps
    end
  end
end
