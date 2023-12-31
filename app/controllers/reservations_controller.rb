class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: %i[create]

    def index
        @reservation = Reservation.all
    end
    
    def show 
        @reservation = Reservation.find(params[:id])
    end    
    def new
        @reservation = Reservation.new
    end
    
    def create
       @reservation = Reservation.new(reservation_params)
        if @reservation.save
          redirect_to @reservation, notice: 'Reservation successfully created.'
        else
          render :new
        end
    end

    def edit
        @reservation = Reservation.find(params[:id])
    end    

    def update
        @reservation = Reservation.find(params[:id])
        if @reservation.update(reservation_params)
            redirect_to @reservation
          else
            render :edit, status: :unprocessable_entity
          end
    end  
    
    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy

        redirect_to new_reservation_path, status: :see_other
    end    
    
    private
    
    def reservation_params
        params.require(:reservation).permit(:name, :email, :phone, :seats, :date, :time)
    end
end
