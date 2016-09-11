Rails.application.routes.draw do

root "comments#index"

# Routes for the Action resource:
  # CREATE
  get "/actions/new", :controller => "actions", :action => "new"
  post "/create_action", :controller => "actions", :action => "create"

  # READ
  get "/actions", :controller => "actions", :action => "index"
  get "/actions/:id", :controller => "actions", :action => "show"

  # UPDATE
  get "/actions/:id/edit", :controller => "actions", :action => "edit"
  post "/update_action/:id", :controller => "actions", :action => "update"

  # DELETE
  get "/delete_action/:id", :controller => "actions", :action => "destroy"
  #------------------------------

  # Routes for the Scoring resource:
  # CREATE
  get "/scorings/new", :controller => "scorings", :action => "new"
  post "/create_scoring", :controller => "scorings", :action => "create"

  # READ
  get "/scorings", :controller => "scorings", :action => "index"
  get "/scorings/:id", :controller => "scorings", :action => "show"

  # UPDATE
  get "/scorings/:id/edit", :controller => "scorings", :action => "edit"
  post "/update_scoring/:id", :controller => "scorings", :action => "update"

  # DELETE
  get "/delete_scoring/:id", :controller => "scorings", :action => "destroy"
  #------------------------------

  # Routes for the Cast resource:
  # CREATE
  get "/casts/new", :controller => "casts", :action => "new"
  post "/create_cast", :controller => "casts", :action => "create"

  # READ
  get "/casts", :controller => "casts", :action => "index"
  get "/casts/:id", :controller => "casts", :action => "show"

  # UPDATE
  get "/casts/:id/edit", :controller => "casts", :action => "edit"
  post "/update_cast/:id", :controller => "casts", :action => "update"

  # DELETE
  get "/delete_cast/:id", :controller => "casts", :action => "destroy"
  #------------------------------

  # Routes for the Fantasy_contestant resource:
  # CREATE
  get "/fantasy_contestants/new", :controller => "fantasy_contestants", :action => "new"
  post "/create_fantasy_contestant", :controller => "fantasy_contestants", :action => "create"

  # READ
  get "/fantasy_contestants", :controller => "fantasy_contestants", :action => "index"
  get "/fantasy_contestants/:id", :controller => "fantasy_contestants", :action => "show"

  # UPDATE
  get "/fantasy_contestants/:id/edit", :controller => "fantasy_contestants", :action => "edit"
  post "/update_fantasy_contestant/:id", :controller => "fantasy_contestants", :action => "update"

  # DELETE
  get "/delete_fantasy_contestant/:id", :controller => "fantasy_contestants", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the League resource:
  # CREATE
  get "/leagues/new", :controller => "leagues", :action => "new"
  post "/create_league", :controller => "leagues", :action => "create"

  # READ
  get "/leagues", :controller => "leagues", :action => "index"
  get "/leagues/:id", :controller => "leagues", :action => "show"

  # UPDATE
  get "/leagues/:id/edit", :controller => "leagues", :action => "edit"
  post "/update_league/:id", :controller => "leagues", :action => "update"

  # DELETE
  get "/delete_league/:id", :controller => "leagues", :action => "destroy"
  #------------------------------

  # Routes for the User_league resource:
  # CREATE
  get "/user_leagues/new", :controller => "user_leagues", :action => "new"
  post "/create_user_league", :controller => "user_leagues", :action => "create"

  # READ
  get "/user_leagues", :controller => "user_leagues", :action => "index"
  get "/user_leagues/:id", :controller => "user_leagues", :action => "show"

  # UPDATE
  get "/user_leagues/:id/edit", :controller => "user_leagues", :action => "edit"
  post "/update_user_league/:id", :controller => "user_leagues", :action => "update"

  # DELETE
  get "/delete_user_league/:id", :controller => "user_leagues", :action => "destroy"
  #------------------------------

  devise_for :users
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
