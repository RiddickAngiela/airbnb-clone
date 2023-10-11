class ListingsController < ApplicationController
  # ...

  def edit
    @listing = Listing.find(params[:id])
    @picture = Picture.new
  end

  def create_picture
    @listing = Listing.find(params[:listing_id])
    @picture = @listing.pictures.build(picture_params)
    if @picture.save
      redirect_to edit_listing_path(@listing), notice: 'Picture added successfully.'
    else
      render :edit
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:image)
  end

  # ...
end
