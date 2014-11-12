Rails.application.routes.draw do

  resources :candidato_idiomas

  resources :formacaos

  resources :candidato_formacaos

  resources :dias_semanas_empresa_perfils

  resources :candidatos

  resources :idiomas_vagas

  resources :idiomas

  resources :cnhs_vagas

  resources :cngs_vagas

  resources :cnhs

  resources :cargos

  resources :cursos

  resources :dias_semanas_vagas

  resources :dias_semanas

  devise_for :users
	devise_scope :user do
		get  '/users/sign_out', to: 'devise/sessions#destroy'
		post '/sessions/user', to: 'devise/sessions#create'
	end

  resources :vagas

  resources :sessions
  resources :documentos_empresa_perfils

  resources :convenios_empresa_perfils

  resources :documentos

  resources :convenios

  resources :empresa_perfils

  root 'home#index'
  get 'check_email', to: 'users#check_email', as: "users/check_email"
  get 'check_empresa', to: 'empresas#check_empresa', as: "check_empresa"

  get 'main', to: 'main#index'
  namespace :admin do
    get '/painel', to: 'painel#index'
    resources :cities
    resources :states
    resources :ramos
  end
  resources :empresas
  resources :users

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
