Rails.application.routes.draw do
  get 'covid_cases/index'

  root "covid_cases#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
