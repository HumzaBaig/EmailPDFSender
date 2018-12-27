class ChangeReportIdColumnOnPhotosTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :photos, :influencerreports, index: true, null: false
  end
end
