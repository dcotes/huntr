class User < ActiveRecord::Base
  has_many :hunts
  has_many :play_sessions


  def namemail
    email[/^.*?(?=@)/]
  end

end