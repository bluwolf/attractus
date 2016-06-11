class MessagesController < ApplicationController


  def create
    puts "outputing parameters: " + params[:message][:content]
    @message = Message.create :content=> params[:message][:content], :park_id => params[:message][:park_id], :user_id => params[:message][:user_id]

    if @message.save
      flash[:notice] = "Message Save Successful"
       redirect_to '/'

    else
      puts "Message Save Failed"
      redirect_to '/'
    end
  end



end
