class PagesController < ApplicationController
  def index
    @message = Message.new
    if params[:search]
      @park = Park.find_by_name(params[:search])
      @park_id = @park.id
      # @messages = Message.order('created_at').where(park_id:@park.id).reverse
      @messages = Message.where(park_id:@park.id)
      @messages = Message.order("created_at desc").where(park_id:@park.id).page(params[:page]).per_page(3)

      puts "park id is: " + (@park_id).to_s
    else
      @park = nil
      @messages = nil
    end

  end







end
