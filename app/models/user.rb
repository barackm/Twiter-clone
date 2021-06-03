# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tweets
  has_many :likes
  has_many :followers
  attr_writer :login

  validate :validate_username

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of(:name)
  validates_presence_of(:username)
  validates_uniqueness_of(:username)
  validates_presence_of(:password)
  validates_presence_of(:password_confirmation)

  def login
    @login || username || email
  end

  def validate_username
    errors.add(:username, :invalid) if User.where(email: username).exists?
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(['lower(username) = :value OR lower(email) = :value',
                                    { value: login.downcase }]).first
    elsif conditions.key?(:username) || conditions.key?(:email)
      where(conditions.to_h).first
    end
  end
end
