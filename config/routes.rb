ConfiguratorPC::Application.routes.draw do
  
  resources :price_of_components

  resources :selected_options_of_pcs

  resources :price_ranges

  resources :description_of_pcs
  resources :description_of_components
	resources :users
	resources :sessions, only: [:new, :create, :destroy]

	root "welcome#index"
	
	match "/admin",							to: "admin#show",										via: "get"
	match "/select_components", to: "select_components#showStep1",  via: "get"
	match "/showStep2", 				to: "select_components#showStep2",  via: "post"
	match "/showStep3", 				to: "select_components#showStep3",  via: "post"
	match "/showStep4", 				to: "select_components#showStep4",  via: "post"

	match "/information", 			to: "information#show", 				via: "get"
	match "/signup", 						to: "users#new", 								via: "get"
	match "/signin", 						to: "sessions#new", 						via: "get"
	match "/signout", 					to: "sessions#destroy", 				via: "delete"
	
	#post  "welcome/1"  			=> "welcome#act1"
	
	
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
