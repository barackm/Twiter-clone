class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes
    validates :text, presence: true
end
