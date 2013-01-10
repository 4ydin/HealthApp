HealthApp::Application.routes.draw do

  get "users/new"
  get "start/index"
  get "start/help"
  get "start/about"
  get "start/contact"
  get "start/signup"
  get "users/show"
  get "sessions/new"
  post "sessions/create"
  delete "sessions/destroy"
  get "profiles/new"
  get "profiles/show"
  get "profiles/edit"
  get "foods/statistic"
  get "foods/dailyCal"
  post "dailies/new"


  resources :periods

  resources :tips

  resources :foods

  resources :users

  resources :sessions, only: [:new, :create, :destroy]
 
  resources :profiles

  resources :dailies

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/help',    to: 'start#help'
  match '/about',   to: 'start#about'
  match '/contact', to: 'start#contact'
  match '/statistic', to: 'dailies#statistic'
  match 'profiles/:profile_id/dailies' => 'dailies#show', :as => :showDailyProfile 


  # find the profile belonging to an user
  #match 'profiles/:profile_id/users' => 'profiles#showProfileFromUser', :as => :showProfileUser 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  match 'start' => 'start#index', :as => :welcomePage
  root :to => 'start#index'
end
