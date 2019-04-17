Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'home#index'
  get 'thoughts', to: 'thoughts#load_all'
  get 'art', to: 'project#load_art'
  get 'software', to: 'project#load_software'
  get 'thoughts/new', to: 'thoughts#new_thought'
  post 'thoughts/new', to: 'thoughts#create_thought'
  get 'thoughts/:id/edit', to: 'thoughts#edit_thought'
  post 'thoughts/:id/edit', to: 'thoughts#update_thought'
  post 'thoughts/:id/delete', to: 'thoughts#destroy_thought'
  post 'thoughts/:id/comment', to: 'thoughts#create_comment'
  post 'thoughts/:tid/comment/:cid/delete', to: 'thoughts#destroy_comment'
  get 'thoughts/:id', to: 'thoughts#load_post'
  get 'projects/new/:mode', to: 'project#new'
  post 'projects/new', to: 'project#create'
  get  'projects/:id/edit', to: 'project#edit'
  post 'projects/:id/edit', to: 'project#update'
  post 'projects/:id/delete', to: 'project#delete'
  get 'projects/:mode/vimeo/:id', to: 'project#get_vimeo_info'
  get 'projects/:mode/:pid/vimeo/:id', to: 'project#get_vimeo_info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
