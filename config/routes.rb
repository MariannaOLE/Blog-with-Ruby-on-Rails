Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
	root to: 'home#index'
	resources :articles do
		resources :comments
	end

	resources :tags

	resources :authors

	resources :author_sessions, only: [ :new, :create, :destroy ]

	get 'login'  => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'
	get 'video'  => 'home#video'
end
