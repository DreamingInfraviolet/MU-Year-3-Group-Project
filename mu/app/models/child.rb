class Child < ActiveRecord::Base
    has_one :first_name
    has_one :second_name
    has_one :age
    has_one :points
    has_one :exercises_completed
end
