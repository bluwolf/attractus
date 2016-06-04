class Message < ActiveRecord::Base
  belongs_to :park
  belongs_to :user

  validates :content, presence: true, length: { minimum: 5 }
  delegate :name, to: :user, allow_nil: true, prefix: true
  delegate :avatar, to: :user, allow_nil: true, prefix: true
end
