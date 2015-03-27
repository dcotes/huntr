helpers  do

#   def current_user
#     if session[:user_id]
#       @current_user ||= User.find(session[:user_id])
#     end  
#   end  

  def user_available_hunts
    if @current_user.play_sessions.pluck(:hunt_id).any?
      Hunt.where('id not in (?)', @current_user.play_sessions.pluck(:hunt_id))
    else
      Hunt.all 
    end
  end

  def check_answer(play_session,guess)
    right_answer = [play_session.location.lat, play_session.location.lon]
    distance = Geocoder::Calculations.distance_between(right_answer, guess)
    distance <= 5 #define tolerance
  end

  def play_session_next_location(play_session)
    next_location =  play_session.hunt.locations.where('id > (?)', play_session.location.id ).first
    next_location ? (play_session.location = next_location) : play_session.complete = true
    play_session.save

  end
end
