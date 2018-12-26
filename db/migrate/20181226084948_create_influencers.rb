class CreateInfluencers < ActiveRecord::Migration[5.0]
  def change
    create_table :influencers do |t|
      t.string :instagram_handle
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
