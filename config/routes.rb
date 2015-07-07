Rails.application.routes.draw do
  
  devise_for :users
  root to: "users#index"

  get      "/education"          => 'educations#index'
  get      "/education/new"      => 'educations#new'
  post     "/education"          => 'educations#create'
  get      "/education/:id/edit" => 'educations#edit'
  get      "/education/:id"      => 'educations#show'
  patch    "/education/:edit"    => 'educations#update'
  delete   "/education/:id"      => 'educations#destroy'

end
