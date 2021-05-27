class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :text, presence: true
end
