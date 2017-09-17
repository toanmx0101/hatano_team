#== Schema Infomation
#
#Table Name: feedbacks
#
#content: string
#user_id: integer
#guest_id: integer
#created_at:datetime
#updated_at: datetime

class Feedback < ApplicationRecord
  belongs_to :guest
  belongs_to :user
  validates :content, presence: true, length: {maximum: 200}
end
