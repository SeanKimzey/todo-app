Rails.application.routes.draw do
  get 'todolist' => 'todos#index'
  get 'todolist/:id'=>'todos#show'
  post 'todolist' => 'todos#create'
  patch 'todolist/:id' => 'todos#update'
end
