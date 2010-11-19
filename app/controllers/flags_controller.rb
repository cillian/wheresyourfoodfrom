class FlagsController < ApplicationController
  before_filter :find_entry

  def new
    @flag = @entry.flags.build
  end
  
  def create
    if params[:cancel]
      redirect_to root_url
    else    
      @flag = @entry.flags.build(:encrypted_session_id => Digest::SHA1.hexdigest(session[:session_id]))
      if @flag.save!
        flash[:notice] = 'Entry reported as spam or inappropriate'
        respond_to do |format|
          format.html { redirect_to root_url }
          format.js { render :json => { :entry_id => params[:entry_id] } }
        end
      end
    end
  end

  private
  
  def find_entry
    @entry = Entry.find(params[:entry_id])
  end
end
