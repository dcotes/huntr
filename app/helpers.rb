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
end
