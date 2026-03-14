class AddQuestIdToRewards < ActiveRecord::Migration[8.1]
  def change
    add_reference :rewards, :quest, null: false, foreign_key: true
  end
end
