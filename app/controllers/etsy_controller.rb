class EtsyController < ApplicationController
  def search
    if params[:q]
      response = Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], :keywords => params[:q])
      @results = JSON.parse(response.body)['results']
    end
    render :search
  end
end
