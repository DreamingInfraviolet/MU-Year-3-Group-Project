class User < ActiveRecord::Base
    validates :first_name, presence: true
    validates :second_name, presence: true
    validates :user_name, presence:true, uniqueness: true
    validates :age, presence: true
    validates :email, presence: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password_hash, presence: true
end
