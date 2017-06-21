Rails.application.routes.draw do
	resources :articles
	resources :tweets, only: [:index, :show] do
     resources :comments, only: [:create]
 
 end
 
end
