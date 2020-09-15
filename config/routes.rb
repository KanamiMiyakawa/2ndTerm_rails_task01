Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/create'
  get 'comments/new'
  get 'comments/edit'
  get 'comments/show'
  get 'comments/update'
  get 'comments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
