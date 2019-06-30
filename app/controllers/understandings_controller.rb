class UnderstandingsController < ApplicationController

  def update
    flash[:notice] = '理解しました'
    understood_or_replay(true)
  end
  
  def destroy
    flash[:notice] = '再復習します'
    understood_or_replay(false)
  end
  
  private
  
  def understood_or_replay(understand)
    understanding = Understanding.find_by(text_id: params[:text_id], user_id: current_user.id)
    unless understanding
      understanding = current_user.understandings.build(text_id: params[:text_id])
    end
    understanding.understand = understand
    if understanding.save
      redirect_to text_path(params[:text_id])
    end
  end
end
