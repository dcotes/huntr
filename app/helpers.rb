helpers  do

#   def current_user
#     if session[:user_id]
#       @current_user ||= User.find(session[:user_id])
#     end  
#   end  

### View Helpers

  def level_to_difficulty(level)
    
    case level
    when 1
      'Super easy'
    when 2
      'Easy'
    when 3
      'Medium'
    when 4
      'Hard'
    when 5
      'Impossible'
    end
  end



  def user_available_hunts

    if @current_user.play_sessions.pluck(:hunt_id).any?
      Hunt.where('id not in (?)', @current_user.play_sessions.pluck(:hunt_id))
    else
      Hunt.all 
    end
  end

### Actions Helpers
  def top_huntrs(hunt)    
    array_ids = PlaySession.where(hunt_id: @hunt.id).where(complete: true).pluck(:user_id)
    array_ids.collect { |id| User.find(id) }  
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
