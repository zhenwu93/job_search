Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :users
     resources :job_listings
     resources :job_lists
     get '/job_search', to: "job_listings#job_search"
   end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
