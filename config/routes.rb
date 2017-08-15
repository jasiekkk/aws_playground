Rails.application.routes.draw do
  devise_for :aws_users, controllers: { registrations: 'registrations' }
  root to: 'static#hello'
end
