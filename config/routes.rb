Yeondoo::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get 'admin'           => 'admin#index'
  get 'admin/login'     => 'admin#login'
  get 'admin/posts'     => 'admin#posts'
  get 'blog'            => 'post#list'
  get 'blog/:title'     => 'post#show'
  get 'menu'            => 'menu#list'
  get 'post/create'     => 'post#create'
  get 'post/edit/:id'   => 'post#edit'
  post 'post/update'     => 'post#update'
  post 'post/addThumbnail/:id' => 'post#addThumbnail'
  get 'post/removeThumbnail/:id' => 'post#removeThumbnail'
  get 'privacy'         => 'home#privacy'
  post 'session/create' => 'session#create'
  get 'session/destroy' => 'session#destroy'
  get 'staffs'          => 'staff#list'
  get '/sitemap.xml'    => 'home#sitemap'

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
