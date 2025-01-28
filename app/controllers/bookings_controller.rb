class BookingsController < ApplicationController
  before_action :set_zombie, only: [:new, :create, :edit, :update]
  before_action :set_booking, only: [:edit, :update, :destroy]

  # GET /zombies/:zombie_id/bookings
  def index
    @bookings = current_user.bookings
  end

  # GET /zombies/:zombie_id/bookings/new
  def new
    @booking = Booking.new
  end

  # POST /zombies/:zombie_id/bookings
  def create
    @booking = @zombie.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @zombie, notice: 'Réservation effectuée avec succès.'
    else
      render :new
    end
  end

  # GET /zombies/:zombie_id/bookings/:id/edit
  def edit
  end

  # PATCH/PUT /zombies/:zombie_id/bookings/:id
  def update
    if @booking.update(booking_params)
      redirect_to @zombie, notice: 'Réservation mise à jour avec succès.'
    else
      render :edit
    end
  end

  # DELETE /bookings/:id
  def destroy
    @booking = current_user.bookings.find(params[:id])
    if @booking.destroy
      flash[:notice] = "Réservation supprimée avec succès."
    else
      flash[:alert] = "Une erreur est survenue lors de la suppression."
    end
    redirect_to bookings_path
  end

  private

  def set_zombie
    @zombie = Zombie.find(params[:zombie_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
