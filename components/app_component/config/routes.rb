AppComponent::Engine.routes.draw do
  root to: "welcome#index"
  resources :games
  resources :teams
  resources :predictions
end
