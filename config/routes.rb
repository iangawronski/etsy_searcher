Rails.application.routes.draw do
  get '/etsy/search', to: 'etsy#search'
end
