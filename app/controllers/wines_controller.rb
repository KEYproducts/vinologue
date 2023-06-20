class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:user_wines, :search]

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

  def show
  end

  def edit
  end

  def update
    if @wine.update(wine_params)
      redirect_to wine_path(@wine)
    else
      render :edit
    end
  end

  def destroy
    @wine.destroy
    redirect_to root_path
  end

  def search
    @wines = @q.result.order("created_at DESC")
  end

  private
  def wine_params
    params.require(:wine).permit(:name, :type_id, :country_id, :area, :variety_id, :country_id, :vintage, :star_id,  :comment, {images: []}
    ).merge(user_id: current_user.id)
  end

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def set_q
    if params[:q]&.dig(:name_or_area_or_vintage_or_comment)
      squished_keywords = params[:q][:name_or_area_or_vintage_or_comment].squish
      params[:q][:name_or_area_or_vintage_or_comment_cont_any] = squished_keywords.split(" ")
    end
    @q = current_user.wines.ransack(params[:q])
  end
end
