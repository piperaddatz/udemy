Rails.application.routes.draw do
  
  resources :notes do 
      resources :reviews
  end  
  resources :topics
  resources :subtopics
  resources :answers
  resources :questions
  resources :users, except: [:new]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  
   root 'welcome#home'
   ##################### Ingresar Preguntas
   get 'welcome/ingresar_preguntas', to: 'welcome#ingresar_preguntas'
   get 'welcome/ver_preguntas', to: 'welcome#ver_preguntas'

   post '/add_question' => 'welcome#ingresar_preguntas'

  # Users
  get 'signup', to: 'users#new' 
  get 'login', to: 'sessions#new' 
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Pagina principal de cursos
  get 'courses', to: 'notes#cursos'


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
