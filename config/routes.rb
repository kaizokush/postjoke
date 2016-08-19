Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'jokes#index'
	resources :jokes
	get 'about' => 'static_pages#about'
	get 'random' => 'static_pages#random'
end
