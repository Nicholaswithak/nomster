class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find{params[:place_id]}
    @place.photos.create
    redirect_to place_path(@place)
  end

end

private

def photo_params
  params.require(:photo).permit(:picture, :caption)
end  


  
