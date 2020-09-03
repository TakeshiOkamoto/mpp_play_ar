Rails.application.routes.draw do
  get 'play_main/index'
  get 'play_inner_join/index'  
  get 'play_left_join/index'
  
  root to: "play_main#index"
end
