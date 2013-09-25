Dockmaster::Application.routes.draw do
  resources :build_templates
  resources :images
  resources :containers do
    member do
      get 'restart'
      get 'stop'
      get 'start'
    end
  end
end
