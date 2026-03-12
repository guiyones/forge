class CreateCheckins < ActiveRecord::Migration[8.1]
  def change
    create_table :checkins do |t|
      t.references :challenge, null: false, foreign_key: true
      t.integer :day_number
      t.string :feeling
      t.text :note

      t.timestamps
    end
  end
end
