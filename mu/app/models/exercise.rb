class Exercise < ActiveRecord::Base
    has_one :title
    has_one :description
    has_one :picture_url
    has_one :audio_url
end
