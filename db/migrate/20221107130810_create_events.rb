class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :starts_at
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
