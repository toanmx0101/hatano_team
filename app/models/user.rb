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
  validates :role, presence: true
end
