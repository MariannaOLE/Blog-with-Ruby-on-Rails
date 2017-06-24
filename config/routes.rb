Rails.application.routes.draw do
	root to: 'articles#index'
	resources :articles
	resources :tweets, only: [:index, :show] do
     resources :comments, only: [:create]
 
 end
 resources :articles do
  resources :comments
end
 
end
