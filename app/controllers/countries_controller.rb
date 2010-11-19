class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:country])
  end

  def post_redirect
    redirect_to params[:country][:id]
  end  
end
