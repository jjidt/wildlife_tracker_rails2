Rails.application.routes.draw do
  match("/", {:via => :get, :to => 'species#index'})
end
