class TryingAgain < ActiveRecord::Migration
  def up
    change_column :users, :exercises_completed_id, :text
  end

  def down
    change_column :users, :exercises_completed_id, :integer
  end
end
