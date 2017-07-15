Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}


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
  namespace :admin do
    resources :user do
      collection do
        get :index
      end
    end
  end

  root "admin/user#index"

  # resources :lixiaolin do 
  #   collection do 
  #     get :index
  #   end
  # end
  # match ':controller(/:action(/:id))(.:format)'
  get "guoyuan/index"
  get "guoyuan/chanye"
  get "guoyuan/new_0"
  get "guoyuan/new_yq"
  get "guoyuan/new_cyfz"
  get "guoyuan/about"
  get "guoyuan/about_wh"
  get "guoyuan/about_rl"
  get "guoyuan/about_zr"
  get "guoyuan/contact"
  get "guoyuan/chanye_3"
  get "guoyuan/chanye_4"
  get "guoyuan/chanye_5"
  get "guoyuan/new_0_2"
  get "guoyuan/new_0_1"
  get "guoyuan/new_0_7"
  get "guoyuan/new_yq_6"
  post "guoyuan/send_message"
end
