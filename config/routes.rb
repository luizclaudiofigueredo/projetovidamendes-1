Rails.application.routes.draw do
  resources :estatisticas
  resources :eventos
  resources :tipo_eventos
  resources :pessoas
  resources :apresentacaos
  root 'welcome#index'
  resources :agendas
  resources :membros
  resources :visitantes
  devise_for :usuarios
end
