class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.string :picture_url
      t.string :audio_url
      t.timestamps null: false
    end
  end
end
