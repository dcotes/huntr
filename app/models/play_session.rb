class PlaySession < ActiveRecord::Base
  belongs_to :user
  belongs_to :hunt
  belongs_to :location
  
  validates :user_id, uniqueness: { scope: :hunt_id }

end
