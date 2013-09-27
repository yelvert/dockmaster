Dockmaster::Application.routes.draw do
  resources :projects do
    resources :build_templatess
    resources :images
    resources :containers
  end

  root 'projects#index'
end
