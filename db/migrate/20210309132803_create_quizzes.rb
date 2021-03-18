class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :room, foreign_key: true
      t.integer :level, null: false, default: 1

      t.timestamps
    end

    add_index :quizzes, :title, unique: true
  end
end
