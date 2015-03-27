class PlaySession < ActiveRecord::Base
  belongs_to :user
  belongs_to :hunt
  belongs_to :location
  
end
