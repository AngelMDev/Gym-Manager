class ReservationsController < ApplicationController
  def user_reservations
    @reservation=Reservation.create(reservation_params)
  end

  def user_index
    @user=User.find(params[:id])
    @klasses=Klass.all
  end

  def klass_index
    @klass=Klass.find(params[:id])
    @users=User.all
  end

  def create
    reservation=Reservation.create(reservation_params)
    redirect_to "/reservations/#{reservation.id}"
  end

  def show
    @reservation= Reservation.find(params[:id])
  end

  def new 
    @user=User.new
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id,:klass_id)
  end
end