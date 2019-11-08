Rails.application.routes.draw do

  root to: 'index#index'

  namespace :admin do
  end

  namespace :intranet do
  end
end
