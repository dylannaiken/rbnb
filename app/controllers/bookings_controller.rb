class BookingsController < ApplicationController
  before_action :set_apartment, only: [:new, :create, :edit, :update]
  before_action :set_booking, only: [:edit, :update, :destroy]

  # GET /apartments/:apartment_id/bookings
  def index
    @bookings = Booking.all
  end

  # GET /apartments/:apartment_id/bookings/new
  def new
    @booking = Booking.new
  end

  # POST /apartments/:apartment_id/bookings
  def create
    @booking = @apartment.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @apartment, notice: 'Réservation effectuée avec succès.'
    else
      render :new
    end
  end

  # GET /apartments/:apartment_id/bookings/:id/edit
  def edit
  end

  # PATCH/PUT /apartments/:apartment_id/bookings/:id
  def update
    if @booking.update(booking_params)
      redirect_to @apartment, notice: 'Réservation mise à jour avec succès.'
    else
      render :edit
    end
  end

  # DELETE /bookings/:id
  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Réservation supprimée avec succès.'
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:apartment_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
