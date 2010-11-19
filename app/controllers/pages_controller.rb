class PagesController < ApplicationController
  def home
    @countries = Country.all
    @entries = Entry.unflagged.paginate :per_page => 30, :page => params[:page] 
  end
end
