class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags, through: :tweets_tags

  validates :message, presence: true
end
