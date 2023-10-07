Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #PostController
  get '/', to: 'posts#toppage', as: 'toppage_posts'

  #CounturiesController
  get '/countries', to: 'countries#toppage', as: 'toppage_countries'
  post '/countries', to: 'countries#create', as: 'create_countries'

  get '/countries/japan', to: 'countries#japan', as: 'japan_countries' 
end
