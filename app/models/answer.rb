class Answer < ActiveRecord::Base
  validates_presence_of :contents
  belongs_to :question
  belongs_to :user
  has_many :likes
  has_many :liking_users, through: :likes, source: :user
end
