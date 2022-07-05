Rails.application.routes.draw do
  resources :apresentacaos
  root 'welcome#index'
  resources :agendas
  resources :membros
  resources :visitantes
  devise_for :usuarios
end
