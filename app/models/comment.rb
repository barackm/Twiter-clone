class Comment < ApplicationRecord
    belongs_to :user 
    belongs_to :tweet
    validates_presence_of :text
end