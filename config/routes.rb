Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :fan_pages, :creators, :lists, :contracts, :movies, :auth
      post "/creators/currentuser", to: "creators#currentuser"
      post "/contracts/currentcreator", to: "contracts#currentcreator"
      post "/contracts/currentmovie", to: "contracts#currentmovie"
    end
  end

end
