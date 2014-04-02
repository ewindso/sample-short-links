class LinksController < ApplicationController
  def index
    @links = Link.all

    @new_link = Link.new
    @base_url = request.protocol + request.host_with_port    
  end

  def create
    @new_link = Link.create(link_params)

    if @new_link.save
      redirect_to root_url
    else
      @links = Link.all
      @base_url = request.protocol + request.host_with_port

      render :index
    end      
  end

  private
    def link_params
      params.require(:link).permit(:full_url)
    end
end
