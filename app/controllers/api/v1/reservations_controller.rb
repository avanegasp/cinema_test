class Api::V1::ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
    if @reservation.save
      redirect_to api_v1_reservation_path
    else
      render 'new'
    end
  end

  private
   def reservation_params
     params.require(:reservation).permit(:name, :identification_card, :phone, :email, :movie_id)
   end
end
