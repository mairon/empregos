Rails.application.routes.draw do

  resources :candidatos_turnos

  resources :candidato_turnos

  resources :candidato_experiencias_cargos

  resources :candidato_experiencia_cargos

  resources :turnos

  resources :nacionalidades

  resources :tipo_vagas

  resources :candidatos_tipo_vagas

  resources :candidatos_cargos

  resources :candidatos_dias_semanas

  resources :candidato_experiencias

  resources :candidato_idiomas

  resources :formacaos

  resources :candidato_formacaos

  resources :dias_semanas_empresa_perfils

  resources :candidatos do
    member do
      get 'visualizacao'
    end
  end

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

  root 'pages#index'
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
end
