Rails.application.routes.draw do
  
  devise_for :users
  root to: "users#index"


  get '/students' => 'attributes#index'
  get '/students/:id' => 'attributes#show'
  get '/students/:id/edit' => 'attributes#edit'
  patch '/attributes/:id' => 'attributes#update'
  delete '/attributes/:id' => 'attributes#destroy'
  
  get '/experiences/new'
  get '/experiences/:id/edit' => 'experiences#edit'
  patch '/experiences/:id' => 'experiences#update'

  get      "/education"          => 'educations#index'
  get      "/education/new"      => 'educations#new'
  post     "/education"          => 'educations#create'
  get      "/education/:id/edit" => 'educations#edit'
  get      "/education/:id"      => 'educations#show'
  patch    "/education/:id"    => 'educations#update'
  delete   "/education/:id"      => 'educations#destroy'

  get      "/skills"          => 'skills#index'
  get      "/skills/new"      => 'skills#new'
  post     "/skills"          => 'skills#create'
  get      "/skills/:id/edit" => 'skills#edit'
  get      "/skills/:id"      => 'skills#show'
  patch    "/skills/:edit"    => 'skills#update'
  delete   "/skills/:id"      => 'skills#destroy'

end