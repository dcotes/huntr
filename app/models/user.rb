class User < ActiveRecord::Base
  has_many :hunts
  has_many :play_sessions

end