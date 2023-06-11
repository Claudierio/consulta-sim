Rails.application.routes.draw do
  resources :enderecos
  resources :consulta
  resources :pacientes
  resources :medicos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pacientes#home"
end
