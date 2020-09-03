class PlayOwner < ApplicationRecord
  has_one :play_cat
  has_one :play_prefecture  
end
