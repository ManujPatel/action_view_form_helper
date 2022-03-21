Rails.application.routes.draw do
  #get 'employees/index'
  #get 'employees/new'
  #get 'employees/create'
  #get 'employees/show'
  #get 'employees/edit'
  #get 'employees/update'
  #get 'employees/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root'employees#index'
  resources:employees
  # Defines the root path route ("/")
  # root "articles#index"
end
