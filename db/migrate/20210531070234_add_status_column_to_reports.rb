class AddStatusColumnToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :status, :boolean
  end
end
