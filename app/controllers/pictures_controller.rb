class PicturesController < ApplicationController
  def show
    @picture = Picture.find_by({:id => params[:id]})
  end
  def index
  end
  def new
  end
  def create
    @p = Picture.new
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save
    redirect_to "http://localhost:3000/all_pictures"
  end
  def destroy
    @picture = Picture.find_by({:id => params[:id]})
    @picture.destroy
  end
  def edit
    @picture = Picture.find_by({:id => params[:id]})
  end
  def update
    @p = Picture.find_by({:id => params[:id]})
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save
    redirect_to "http://localhost:3000/picture_details/#{@p.id}"
  end
end
