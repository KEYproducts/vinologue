class TastingSheetsController < ApplicationController
  def new
    @wine = Wine.find(params[:wine_id])
    @tasting_sheet = TastingSheet.new
  end

  def create
    @tasting_sheet = TastingSheet.new(tasting_sheet_params)
    if @tasting_sheet.save
      flash[:create] = 'テイスティングシートを登録しました。'
      redirect_to wine_path(params[:wine_id])
    else
      render :new
    end
  end

  private

  def tasting_sheet_params
    params.require(:tasting_sheet).permit(
      :detail, hue_ids: [], appearance_ids: [], first_impression_ids: [],
               aroma_element_ids: [], aroma_impression_ids: [], acidity_ids: [], balance_ids: []
    ).merge(
      clarity_id: params[:tasting_sheet][:clarity_id][1],
      brilliance_id: params[:tasting_sheet][:brilliance_id][1],
      depth_id: params[:tasting_sheet][:depth_id][1],
      viscosity_id: params[:tasting_sheet][:viscosity_id][1],
      attack_id: params[:tasting_sheet][:attack_id][1],
      sweetness_id: params[:tasting_sheet][:sweetness_id][1],
      bitterness_id: params[:tasting_sheet][:bitterness_id][1],
      alcohol_id: params[:tasting_sheet][:alcohol_id][1],
      finish_id: params[:tasting_sheet][:finish_id][1],
      evaluation_id: params[:tasting_sheet][:evaluation_id][1],
      serving_temperature_id: params[:tasting_sheet][:serving_temperature_id][1],
      glass_id: params[:tasting_sheet][:glass_id][1],
      wine_id: params[:wine_id]
    )
  end
end
