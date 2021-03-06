class ImagesController < ApplicationController
  def index
    @images = Image.all
    # @image = @current_user.image => seprate the user as a private sign in.
  end

  def show
    @image = Image.find params[:id]
  end

  def map
    @image = Image.find params[:id]

  end

  def new
   @image = Image.new
 end



 def create
   cloudinary = Cloudinary::Uploader.upload( params["image"]["image"])
   image = Image.new(image_params)
   image.image = cloudinary["url"]
   image.save
   redirect_to images_path
 end

 def update
   image = Image.find params[:id]
   image.update image_params
   redirect_to image_path
 end

 def edit
   @image = Image.find params[:id]
 end

 def destroy
   image = Image.find params[:id]
   Image.destroy image.id
   redirect_to images_path
 end

 private
  def image_params
    params.require(:image).permit(:name, :location, :history, :image)
  end
end
