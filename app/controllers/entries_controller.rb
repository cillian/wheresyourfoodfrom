class EntriesController < ApplicationController
  def new
    @entries = Entry.all
    @entry = Entry.new
    @entry.build_food
    @entry.build_brand
    @countries = Country.all
  end
  
  def create
    @countries = Country.all
    @entry = Entry.new(params[:entry])
    if @entry.save
      redirect_to root_url
    else
      render :action => :new
    end
  end

  def flagged
    @flagged_entries = Entry.flagged
  end
end
