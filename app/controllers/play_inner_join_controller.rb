class PlayInnerJoinController < ApplicationController

  def index
    @inner1 = PlayOwner.joins(:play_cat).where(id: 2)
               .select(:id, :name, 'play_cats.name as cat_name')
    @inner1_sql = @inner1.to_sql
 
    @inner2 = PlayOwner.joins(:play_cat, :play_prefecture).where(id: 2)
               .select(:id, :name, 'play_cats.name as cat_name', 'play_prefectures.name as prefecture_name')
    @inner2_sql = @inner2.to_sql 
  end  
end
