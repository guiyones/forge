class CreateRewards < ActiveRecord::Migration[8.1]
  def change
    create_table :rewards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.string :description
      t.string :status
      t.datetime :completed_at

      t.timestamps
    end
  end
end
