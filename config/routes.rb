Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "git_users/search"
  root to: "git_users#search"

  match 'git_users/search' => 'git_users/search', via: [:get, :post] 
end
