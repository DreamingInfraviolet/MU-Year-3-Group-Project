class ChangedExerciseIdTypeToString < ActiveRecord::Migration
  def change
    change_column :users, :exercises_completed_id, :string
  end
end
