class Hunt < ActiveRecord::Base
  has_many :play_sessions
  has_many :locations
  belongs_to :user

  validates :level, inclusion: { in: 1..3 }
  validates :locations, :length => { minimum: 3, message: "Needs minimum 3 locations." }
end