class CreateCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :centers do |t|
      t.integer :leaderboard_id
      t.integer :player_id
    end
  end
end
