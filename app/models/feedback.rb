class Feedback < ApplicationRecord
  belongs_to :guest
  belongs_to :user
end
