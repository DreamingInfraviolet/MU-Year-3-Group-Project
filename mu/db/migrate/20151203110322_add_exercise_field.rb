class AddExerciseField < ActiveRecord::Migration
  def change
    add_column :exercises, :group, :integer
  end
end
