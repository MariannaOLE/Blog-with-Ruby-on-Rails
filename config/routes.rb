Rails.application.routes.draw do
	root to: 'home#index'
	resources :articles do
		resources :comments
	end
	resources :tags

end


