Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('users' => 'users#index')
  get('users/:id' => 'users#show')

  get('/find_user' => 'users#find_user')

  post('/new_user' => 'users#new')

end

