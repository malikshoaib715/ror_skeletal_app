class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :reports, :column, :column10
  end
end
