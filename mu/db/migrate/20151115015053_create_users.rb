class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :user_name
      t.string :password_hash
      t.date :age
      t.string :email
      t.integer :exercises_completed_id

      t.timestamps null: false
    end
  end
end
