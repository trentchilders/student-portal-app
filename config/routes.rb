Rails.application.routes.draw do
  
  devise_for :users
  root to: "users#index"


  get '/experiences/new'
  get '/experiences/edit/:id' => 'experiences#edit'
  patch '/experiences' => 'experiences#update'
end
