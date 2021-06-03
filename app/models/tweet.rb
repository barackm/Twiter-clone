# frozen_string_literal: true

class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  validates :text, presence: true
  has_one_attached :cover_picture
end
