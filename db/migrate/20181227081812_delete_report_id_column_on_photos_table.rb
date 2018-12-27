class DeleteReportIdColumnOnPhotosTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :report_id
  end
end
