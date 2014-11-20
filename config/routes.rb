RupeeVest::Application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  root :to => 'static_pages#index'
  get "static_pages/index"
  get "static_pages/invest"
  get "static_pages/blog_home"
  get "static_pages/blog_single"
  get "static_pages/contact"
  get "static_pages/error"
  get "static_pages/pricing"
  get "static_pages/team"
  get "static_pages/risk_profiling"
  get "static_pages/return_expectation"
  get "static_pages/academics"
  get "static_pages/sign_in"
  get "static_pages/sign_up"
  get "static_pages/dashboard"
  get "static_pages/help"
  get "static_pages/objective"
  get "static_pages/portfolio"
  get "static_pages/tax_efficient"
  get "static_pages/safety"
  get "static_pages/testimonials"

  #match '/index',    to: 'static_pages#index',    via: 'get'

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
