Rails.application.routes.draw do

  get 'mystuff/myrukus'

  get 'mystuff/mycomments'

  get 'mystuff/myfavorites'

  resources :posts, only: [:index, :new, :create, :show, :upvote, :downvote] do
    member do
      put 'upvote', to: 'posts#upvote'
      put 'downvote', to: 'posts#downvote'
    end
  end

  get 'posts/:id' => 'posts#index', as: :view


  resources :comments, only: [:new, :create, :upvote] do
    member do
      put 'upvote', to: 'comment#upvote'
      put 'downvote', to: 'post#downvote'
    end
  end

  get 'posts/:id/comment/new' => 'comments#new', as: :new

  devise_for :users
  get 'signin' => 'signin#index'

  get 'feed' => 'posts#index'
  post 'posts/index'

  root 'signin#index'

  post 'signin/index'
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
