class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title, null: false, unique: true
      t.references :user, null: false, foreign_key: true
      t.string :code, null: false, unique: true

      t.timestamps
    end
  end
end
