Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :fan_pages, :creators, :lists, :contracts, :movies
    end
  end

end
