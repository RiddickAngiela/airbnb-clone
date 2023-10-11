class BookingsController < ApplicationController
   def new
    @booking = Booking.new
    @pictures = Picture.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path, notice: 'Booking successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :picture_id, :date)
  end

  def destroy
  end
end
