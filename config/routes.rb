Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #PostController
  get '/', to: 'posts#toppage', as: 'toppage_posts'

  #CounturiesController
  get '/countries', to: 'countries#index', as: 'index_countries'
  get '/countries/new', to: 'countries#new', as: 'new_countries'
  post '/countries/new', to: 'countries#create', as: 'create_countries'

  #JpanController
  get '/japan/new', to: 'japan#new', as: 'new_japan'
  post '/japan/new', to: 'japan#create', as: 'create_japan'
  get '/japan', to: 'japan#index', as: 'index_japan'

  # get '/countries/japan/', to: 'countries#index', as: 'index_japan'
  # post '/countries/jpan', to: 'countries#japanCreate', as: 'japan_create'
end
