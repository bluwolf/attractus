class PagesController < ApplicationController
  def index
    if params[:search]
      @park = Park.find_by_name(params[:search])
      # @messages = Message.order('created_at').where(park_id:@park.id).reverse
      @messages = Message.where(park_id:@park.id)
    else
      @park = nil
      @messages = nil
    end
  end


end
