class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.new
  end
end
