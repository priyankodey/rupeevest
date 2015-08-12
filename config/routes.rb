RupeeVest::Application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  root :to => 'static_pages#index'
  
  match '/offer', to: 'static_pages#offer', via: 'get'
  match '/invest', to: 'static_pages#invest', via: 'get'
  match '/invest', to: 'static_pages#invest', via: 'post'  
  match '/contact', to: 'static_pages#contact', via: 'get' 
  match '/team', to: 'static_pages#team', via: 'get'
  match '/optimum-portfolio', to: 'static_pages#risk_profiling', via: 'get', as: :risk_profiling
  match '/investment-strategy', to: 'static_pages#return_expectation', via: 'get', as: :return_expectation
  match '/research', to: 'static_pages#research', via: 'get'
  match '/gallery', to: 'static_pages#academics', via: 'get', as: :academics
  match '/objective', to: 'static_pages#objective', via: 'get'  
  match '/tax-efficient-investing', to: 'static_pages#tax_efficient', via: 'get', as: :tax_efficient  
  match '/invest_button', to: 'static_pages#invest_button', via: 'post'
  match '/investor_details', to: 'static_pages#investor_details', via: 'post'  
  match '/top-funds', to: 'static_pages#top_funds', via: 'get', as: :top_funds
  match '/investor_details_elss', to: 'static_pages#investor_details_elss', via: 'post'
  match '/investor_home_contact', to: 'static_pages#investor_home_contact', via: 'post'
  match '/calculator', to: 'static_pages#return_assumptions', via: 'get', as: :return_calculator
  match '/new-funds', to: 'static_pages#new_funds', via: 'get', as: :new_funds
  match '/fd_download_pdf', to: 'static_pages#fd_download_pdf', via: 'get'
  match '/bd_download_pdf', to: 'static_pages#bd_download_pdf', via: 'get'
  match '/mfe_download_pdf', to: 'static_pages#mfe_download_pdf', via: 'get'
  match '/mfd_download_pdf', to: 'static_pages#mfd_download_pdf', via: 'get'
  match '/mfh_download_pdf', to: 'static_pages#mfh_download_pdf', via: 'get'
  match '/mft_download_pdf', to: 'static_pages#mft_download_pdf', via: 'get'
           
  # match '/blog_home', to: 'static_pages#blog_home', via: 'get'
  # match '/blog_single', to: 'static_pages#blog_single', via: 'get'
  # match '/error', to: 'static_pages#error', via: 'get'
  # match '/pricing', to: 'static_pages#pricing', via: 'get'
  # match '/sign_up', to: 'static_pages#sign_up', via: 'get'
  # match '/dashboard', to: 'static_pages#dashboard', via: 'get'
  # match '/help', to: 'static_pages#help', via: 'get'
  # match '/portfolio', to: 'static_pages#portfolio', via: 'get'
  # match '/safety', to: 'static_pages#safety', via: 'get'
  # match '/testimonials', to: 'static_pages#testimonials', via: 'get'
  # match '/details', to: 'static_pages#details', via: 'get'
  # match '/sign_in', to: 'static_pages#sign_in', via: 'get'  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :contacts

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
