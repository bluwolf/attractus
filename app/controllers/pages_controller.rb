class PagesController < ApplicationController
  def index

    if params[:search]
      @park = Park.find_by_name(params[:search])
    else
      @park = nil
    end
  end


end
