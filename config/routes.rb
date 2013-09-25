Dockmaster::Application.routes.draw do
  resources :containers do
    member do
      get 'restart'
      get 'stop'
      get 'start'
    end
  end
end
