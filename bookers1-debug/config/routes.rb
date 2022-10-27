Rails.application.routes.draw do
 get 'homes/top' => 'homes#top'
 
 get 'books/edit'
 
  resources :books
end
