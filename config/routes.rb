Rails.application.routes.draw do
  namespace :admin do
    get 'categories',           to: 'categories#index',   as: 'categories'
    get 'categories/new',       to: 'categories#show',    as: 'new_category'
    get 'categories/:id',       to: 'categories/show',    as: 'category'
    get 'categories/:id/edit',  to: 'categories#edit',    as: 'edit_category'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
