class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :column1
      t.string :column2
      t.string :column3
      t.string :column4
      t.string :column5
      t.integer :column6
      t.integer :column7
      t.integer :column8
      t.datetime :column9
      t.datetime :column10

      t.timestamps
    end
  end
end
