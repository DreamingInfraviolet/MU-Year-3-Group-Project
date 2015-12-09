class FixedExerciseIdTypeAgain < ActiveRecord::Migration
  def change
    change_column :users, :exercises_completed_id, :text
  end
end
