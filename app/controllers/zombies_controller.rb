class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]

  def index
    @zombies = Zombie.all
  end

  def show
  end

  def new
    @zombie = Zombie.new
  end

  def create
    @zombie = Zombie.new(zombie_params)
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
    params.require(:zombie).permit(:name, :price, :image, :description, :height, :race, :skill, :user_id)
  end
end