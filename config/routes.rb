Recipes::Application.routes.draw do
  match('/recipes', {:via => :get, :to => 'recipes#index'})
  match('/recipes', {:via => :post, :to => 'recipes#create'})
  match('/recipes/:slug', {:via => :get, :to => 'recipes#show'})
  match('/recipes/:slug', {:via => [:patch, :put], :to => 'recipes#update'})
end
