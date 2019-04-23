Rails.application.routes.draw do
  get '/' => 'main#index'
  post '/' => 'main#add_task'
end
