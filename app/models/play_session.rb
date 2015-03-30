class PlaySession < ActiveRecord::Base
  belongs_to :user
  belongs_to :hunt
  belongs_to :location
  has_many :hints, through: :location
  belongs_to :current_hint, class_name: 'Hint'

  validates :user_id, uniqueness: { scope: :hunt_id }

  def check_answer(guess) #return true if right answer, false if wrong
    right_answer = [self.location.lat, self.location.lon]
    distance = Geocoder::Calculations.distance_between(right_answer, guess)
    distance <= 0.01 #define tolerance
  end
end
