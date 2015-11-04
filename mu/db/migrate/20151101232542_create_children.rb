class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :points
      t.string :exercises_completed
      
      t.timestamps null: false
    end
  end
end
