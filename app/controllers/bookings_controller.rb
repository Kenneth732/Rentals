class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

    def index
      @bookings = Booking.all
    end
  
    def show
    end
  
    def new
      @booking = Booking.new
    end
  
    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @booking.update(booking_params)
        redirect_to @booking, notice: 'Booking was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @booking.destroy
      redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
    end
  
    private
  
    def set_booking
      @booking = Booking.find(params[:id])
    end
  
    def booking_params
      params.require(:booking).permit(:user_id, :room_id, :paid, :booking_date)
    end
end
