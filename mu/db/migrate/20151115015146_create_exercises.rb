class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :audio_url
      t.integer :rating

      t.timestamps null: false
    end
  end
end
