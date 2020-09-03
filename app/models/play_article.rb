class PlayArticle < ApplicationRecord
  belongs_to :play_category
  has_many :play_accesses
  has_many :play_authors  
end
