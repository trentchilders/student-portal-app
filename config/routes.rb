Rails.application.routes.draw do
  
  devise_for :users
  root to: "users#index"

  get 'students' => 'attributes#index'
  get '/students/:id' => 'attributes#show'
  get '/experiences/new'
  get '/experiences/edit/:id' => 'experiences#edit'
  patch '/experiences' => 'experiences#update'
end
