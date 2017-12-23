Rails.application.routes.draw do
  get 'competences/index'
  resource :competences
end
