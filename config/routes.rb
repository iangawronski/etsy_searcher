Rails.application.routes.draw do
  get '/etsy_search', to: 'etsy#search'
end
