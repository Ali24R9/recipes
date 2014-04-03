Recipes::Application.routes.draw do
  match('/recipes', {:via => :get, :to => 'recipes#index'})
  match('/recipes', {:via => :post, :to => 'recipes#create'})
end
