Rails.application.routes.draw do
  resources :contests

  root 'welcome#index'

  get     '/',        to: 'welcome#index'

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  get     '/logout',  to: 'sessions#delete'
  delete  '/logout',  to: 'sessions#destroy'

  get     '/signin',  to: 'signins#new'
  post    '/signin',  to: 'signins#create'

  get     '/options', to: 'options#index'
  post    '/options', to: 'options#update'

  # This section must be located at the end
  get     '/:url_id', to: 'voices#new'
  get     '/contests/:id/voices', to: 'voices#new_by_id'
  post    '/contests/:id/voices', to: 'voices#create'

  post    '/contests/:id/winner/:winner_audio_id',  to: 'contests#winner'
end
