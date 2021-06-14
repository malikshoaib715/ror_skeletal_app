class CreateChoosenAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :choosen_answers do |t|
      t.references :result, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
