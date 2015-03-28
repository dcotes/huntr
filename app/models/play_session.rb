class PlaySession < ActiveRecord::Base
  belongs_to :user
  belongs_to :hunt
  belongs_to :location
  has_many :hints, through: :location
  belongs_to :current_hint, class_name: 'Hint'

  validates :user_id, uniqueness: { scope: :hunt_id }

end
