Rails.application.routes.draw do


  resources :skills


  get '/areas(.:format)', to: 'areas#index', as: :areas
  post '/areas(.:format)', to: 'areas#create'
  get '/areas/new(.:format)', to: 'areas#new', as: :new_area
  get '/areas/:id/edit(.:format)', to: 'areas#edit', as: :edit_area
  get '/areas/:id(.:format)', to: 'areas#show', as: :area
  patch '/areas/:id(.:format)', to: 'areas#update'
  put '/areas/:id(.:format)', to: 'areas#update'
  delete '/areas/:id(.:format)', to: 'areas#destroy'

   #configuracao das rotas para profiles
  get '/profiles(.:format)', to: 'profiles#index', as: :profile
  post   '/profiles(.:format)', to: 'profiles#create', as: :profiles
  get    '/profiles/new(.:format)', to: 'profiles#new', as: :new_profile
  get    '/profiles/:id/edit(.:format)', to: 'profiles#edit', as: :edit_profile
  get    '/profiles/:id(.:format)', to: 'profiles#show', as: :show_profile
  patch '/profiles/:id(.:format)', to: 'profiles#update', as: :update_profile1
  put    '/profiles/:id(.:format)', to: 'profiles#update', as: :update_profile2
  delete '/profiles/:id(.:format)', to: 'profiles#destroy', as: :delete_profile

  #configuracao das rotas para roles
  get 'roles' => 'roles#index', as: :roles
  get 'roles/new' => 'roles#new', as: :new_role
  get 'roles/:id/edit' => 'roles#edit', as: :edit_role
  get 'roles/:id' => 'roles#show', as: :role
  post 'roles' => 'roles#create'
  delete 'roles/:id' => 'roles#destroy'
  put 'roles/:id' => 'roles#update'
  patch 'roles/:id' => 'roles#update'



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
