class Location < ActiveRecord::Base
  has_many :play_sessions
  has_many :hints

  belongs_to :hunt
end