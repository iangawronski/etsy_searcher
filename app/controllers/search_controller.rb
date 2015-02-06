require 'httparty'

class SearchController < ApplicationController
  def search
    @results = nil
    if params[:q]
      respose = Etsy::Request.get('/listings/active', :inlcude ['Images', 'Shop'], :keywords => params[:q])
      @results = Json.parse(response.body)['results']
    end
    render :search
  end
end
