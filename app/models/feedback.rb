class Feedback < ApplicationRecord
  belongs_to :guest
  belongs_to :user
  validates :content, presence: true, length: {maximum: 200}
end
