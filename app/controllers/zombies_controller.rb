class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @zombies = Zombie.all
    @markers = @zombies.geocoded.map do |zombie|
      {
        lat: zombie.latitude,
        lng: zombie.longitude
      }
    end
  end

  def show
  end

  def new
    @zombie = Zombie.new
  end

  def create
    @zombie = Zombie.new(zombie_params)
    @zombie.user = current_user
    if @zombie.save
      redirect_to @zombie, notice: 'Zombie was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @zombie.update(zombie_params)
      redirect_to @zombie, notice: 'Zombie was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @zombie.destroy
    redirect_to zombies_url, notice: 'Zombie was successfully destroyed.'
  end

  private

  def set_zombie
    @zombie = Zombie.find(params[:id])
  end

  def zombie_params
    params.require(:zombie).permit(:name, :price, :description, :height, :race, :skill, :photo)
  end
end
