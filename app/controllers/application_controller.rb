class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def post_params
    params.require(:post).permit(:title, :content, :address)
  end
end
