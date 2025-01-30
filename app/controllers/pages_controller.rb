class PagesController < ApplicationController
  def home
    @zombies = Zombie.all
  end
end
