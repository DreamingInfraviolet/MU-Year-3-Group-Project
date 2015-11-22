class Exercise < ActiveRecord::Base
    validates :title, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
    validates :audio_url, presence: true
    validates :rating, presence: true

end
