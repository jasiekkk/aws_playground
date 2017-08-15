Rails.application.routes.draw do
  devise_for :aws_users
  root to: 'static#hello'
end
