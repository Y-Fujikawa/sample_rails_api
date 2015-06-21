Rails.application.routes.draw do
  mount TodoAPI => "/"
  
  get "todo/:id" => "todo#show", format: false
end
