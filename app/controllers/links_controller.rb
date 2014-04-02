class LinksController < ApplicationController
  def index
    @links = Link.all

    @new_link = Link.new
  end

  def create
    @link = Link.create(link_params)

    if @link.save
      redirect_to root_url
    else
      render :index, @errors => @link.errors
    end      
  end

  private
    def link_params
      params.require(:link).permit(:full_url)
    end
end
