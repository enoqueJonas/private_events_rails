class User < ApplicationRecord
  has_many :event_creations
  has_many :events, through: :event_creations, source: :created_event
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
