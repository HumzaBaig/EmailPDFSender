class RemoveInfluencerIdColumnFromPhotosTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :influencer_id
  end
end
