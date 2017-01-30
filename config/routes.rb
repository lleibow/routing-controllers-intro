Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'

  root 'pages#welcome'

  get '/about' => 'pages#about'

  get'/contest' => 'pages#contest'

  get '/kitten/:size' => 'pages#kitten', as: 'kitten'

  get '/kittens/:size' => 'pages#kittens', as: 'size'

  get '/secrets/:magic_word' => 'pages#secrets', as: 'magic_word'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
