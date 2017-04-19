$:.push File.expand_path("vendor/campusties_engine/lib", __FILE__)

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  # mount Campusties::Engine => '/'
end
