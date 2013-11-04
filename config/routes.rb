LoginRegistrationAgain::Application.routes.draw do
  root 'users#index'
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
  
  get "/about", to: 'users#about'
  get "/search", to: 'shoes#search'
  # get "/jordan", to: 'shoes#shoe_brand'
  # get "/kd", to: 'shoes#shoe_brand'
  # get "/lebron", to: 'shoes#shoe_brand'
  # get "/kobe", to: 'shoes#shoe_brand'
  # get "/foam", to: 'shoes#shoe_brand'
  # get "/nike", to: 'shoes#shoe_brand'
  # get "/reebok", to: 'shoes#shoe_brand'
  # get "/adidas", to: 'shoes#shoe_brand'
  # get "/puma", to: 'shoes#shoe_brand'
  # get "/asics", to: 'shoes#shoe_brand'
  get "/brand/:name", to: "shoes#shoe_brand", as: 'brand'
  get "/brand/:name/all", to: "shoes#brand_all", as: 'brand_all'
  resources :users
  resources :sessions
  resources :shoes
  resources :collections
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
