class DeleteInfluencersTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :influencers
  end
end
