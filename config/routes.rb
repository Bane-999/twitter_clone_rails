Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  resources :tweeets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    get '/sign-in' => "devise/sessions#new", :as => :login
  end


  

  # Defines the root path route ("/")
  root "tweeets#index"
end
