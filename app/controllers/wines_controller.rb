class WinesController < ApplicationController

  def user_wines
    @user = User.find(current_user.id)
    @wines = @user.wines.order("created_at DESC")
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def wine_params
    params.require(:wine).permit(:name, :type_id, :country_id, :area, :variety_id, :country_id, :vintage, :star_id,  :comment, {images: []}
    ).merge(user_id: current_user.id)
  end
end
