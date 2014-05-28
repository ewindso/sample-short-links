class LinksController < ApplicationController
  def index
    @links = Link.all

    @new_link = Link.new
    @base_url = request.protocol + request.host_with_port    
  end

  def create
    @new_link = Link.create(link_params)

    if @new_link.save
      respond_to do |format|
        format.html { redirect_to '/' }
        format.json { render :json => @new_link }
      end
    else
      @links = Link.all
      @base_url = request.protocol + request.host_with_port

      render :index
    end      
  end

  def show
    link = Link.find_by_code(params[:code])

    if link
      link.clicks += 1
      link.save

      redirect_to link.full_url
    else
      redirect_to '/'
    end
  end

  private
    def link_params
      params.require(:link).permit(:full_url)
    end
end
