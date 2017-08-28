class ImagesController < ApplicationController
  def index
    @images = Image.all
    # @image = @current_user.image => seprate the user as a private sign in.
  end

  def show
    @image = Image.find params[:id]
  end

  def new
   @image = Image.new
 end

 def create
   image = Image.create image_params
   redirect_to image
 end

 def update
   image = Image.find params[:id]
   image.update image_params
   redirect_to image
 end

 def edit
   @image = Image.find params[:id]
 end

 def destroy
   @image = Image.find params[:id]
   user.destroy.id
   redirect_to image
 end

 private
  def image_params
    params.require(:image).permit(:name, :location, :history, :image)
  end
end
