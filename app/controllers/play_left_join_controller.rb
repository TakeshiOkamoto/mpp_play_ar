class PlayLeftJoinController < ApplicationController
  def index
    @left1 = PlayArticle.left_joins(:play_category)
              .select(:id, :title, 'play_categories.name as category_name')
    @left1_sql = @left1.to_sql  
    
    @left2 = PlayArticle.left_joins(:play_authors, :play_accesses)
              .select(:id, :title, :name, :value)
    @left2_sql = @left2.to_sql  
    
    @left3 = PlayArticle.left_joins(:play_category, :play_accesses)
              .select(:id, :title, :name, :value)
    @left3_sql = @left3.to_sql      
  end
end
