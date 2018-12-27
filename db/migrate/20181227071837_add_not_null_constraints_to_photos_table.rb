class AddNotNullConstraintsToPhotosTable < ActiveRecord::Migration[5.0]
  def change
    change_column_null :photos, :industry, false
    change_column_null :photos, :likes, false
    change_column_null :photos, :comments, false
  end
end
