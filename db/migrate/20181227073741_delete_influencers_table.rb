class DeleteInfluencersTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :influencers, if_exists: true #ON ACCIDENT
  end
end
