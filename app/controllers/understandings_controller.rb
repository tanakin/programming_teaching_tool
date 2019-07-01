class UnderstandingsController < ApplicationController

  def update
    if Understanding.update_understandings(params[:text_id], current_user, true)
      redirect_to text_path(params[:text_id]), flash: { notice: '理解しました'}
    end
  end
  
  def destroy
    if Understanding.update_understandings(params[:text_id], current_user, false)
      redirect_to text_path(params[:text_id]), flash: { notice: '再復習します'}
    end
  end
  
end
