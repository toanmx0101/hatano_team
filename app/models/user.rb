#==schema infomation
#
#table name: users
#
#name: string
#email: string
#birth_day: date
#sex: boolean
#address: string
#role: boolean
#phone: float
#encrypted_password: string
#reset_password_token: string
#reset_password_sent_at: datetime
#remember_created_at: datetime
#sign_in_count: integer
#current_sign_in_at: datetime
#last_sign_in_at: datetime
#current_sign_in_ip
#last_sign_in_ip
#created_at: datetime
#updated_at: datetime

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :feedbacks, dependent: :destroy
  has_many :orders, dependent: :destroy
  validates_associated :feedbacks
  validates_associated :orders
  validates :name, presence: true
  validates :birth_day, presence: true
  validates :sex, presence: true
  validates :address, presence: true
end
