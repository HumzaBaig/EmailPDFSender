class AddReportIdColumnToPhotosTable < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :report_id, :integer, null: false
  end
end
