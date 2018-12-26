class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :industry
      t.integer :likes
      t.integer :comments
      t.integer :influencer_id

      t.timestamps
    end
  end
end
