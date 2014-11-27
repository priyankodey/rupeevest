RupeeVest::Application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  root :to => 'static_pages#index'
  # get "static_pages/index"
  # get "static_pages/invest"
  # post "static_pages/invest"
  # get "static_pages/blog_home"
  # get "static_pages/blog_single"
  # get "static_pages/contact"
  # get "static_pages/error"
  # get "static_pages/pricing"
  # get "static_pages/team"
  # get "static_pages/risk_profiling"
  # get "static_pages/return_expectation"
  # get "static_pages/academics"
  # get "static_pages/sign_in"
  # get "static_pages/sign_up"
  # get "static_pages/dashboard"
  # get "static_pages/help"
  # get "static_pages/objective"
  # get "static_pages/portfolio"
  # get "static_pages/tax_efficient"
  # get "static_pages/safety"
  # get "static_pages/testimonials"
  # post "static_pages/invest_button"
  # post "static_pages/investor_details"
  match '/', to: 'static_pages#index', via: 'get'
  match '/offer', to: 'static_pages#offer', via: 'get'
  match '/invest', to: 'static_pages#invest', via: 'get'
  match '/invest', to: 'static_pages#invest', via: 'post'
  match '/blog_home', to: 'static_pages#blog_home', via: 'get'
  match '/blog_single', to: 'static_pages#blog_single', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/error', to: 'static_pages#error', via: 'get'
  match '/pricing', to: 'static_pages#pricing', via: 'get'
  match '/team', to: 'static_pages#team', via: 'get'
  match '/risk_profiling', to: 'static_pages#risk_profiling', via: 'get'
  match '/return_expectation', to: 'static_pages#return_expectation', via: 'get'
  match '/research', to: 'static_pages#research', via: 'get'
  match '/academics', to: 'static_pages#academics', via: 'get'
  match '/sign_in', to: 'static_pages#sign_in', via: 'get'
  match '/sign_up', to: 'static_pages#sign_up', via: 'get'
  match '/dashboard', to: 'static_pages#dashboard', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/objective', to: 'static_pages#objective', via: 'get'
  match '/portfolio', to: 'static_pages#portfolio', via: 'get'
  match '/tax_efficient', to: 'static_pages#tax_efficient', via: 'get'
  match '/safety', to: 'static_pages#safety', via: 'get'
  match '/testimonials', to: 'static_pages#testimonials', via: 'get'
  match '/invest_button', to: 'static_pages#invest_button', via: 'post'
  match '/investor_details', to: 'static_pages#investor_details', via: 'post'
  match '/details', to: 'static_pages#details', via: 'get'


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
