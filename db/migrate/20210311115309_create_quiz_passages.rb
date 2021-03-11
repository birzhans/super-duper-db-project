class CreateQuizPassages < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_passages do |t|
      t.references :quiz, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :current_question_id
      t.integer :correct_answers, default: 0
      t.boolean :passed
      t.time :time_taken

      t.timestamps
    end
  end
end
