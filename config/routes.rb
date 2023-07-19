Rails.application.routes.draw do
  root 'pages#home'
  get 'cv', to: 'pages#cv'
end
