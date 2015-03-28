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
    if next_location 
      play_session.location = next_location
      play_session.current_hint_id = 0
    else
      play_session.complete = true
    end

    play_session.save
  end

  def play_session_next_hint(play_session)
    next_hint = play_session.location.hints.where('id > (?)', play_session.current_hint_id).first
    play_session.current_hint = next_hint if next_hint
    play_session.used_hints += 1 if next_hint
    play_session.save
  end

  def hints_to_display(play_session)
    num_hints_to_show = play_session.location.hints.where('id <= (?)', play_session.current_hint_id).count
    play_session.location.hints.order("id ASC").limit(num_hints_to_show)
  end
end
