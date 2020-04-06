Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('users' => 'users#index')
  get('users/:id' => 'users#show')

  get('/find_user' => 'users#find_user')

end

