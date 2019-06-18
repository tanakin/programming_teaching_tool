class TextsController < ApplicationController

  def index
    path_genre = request.fullpath.include?('sort')

    if !path_genre
        @texts = Text.data_sort(request)
        @sort = Text.sort_key(request)
    else 
        @texts = Text.genre_sort_method
    end

    @q = @texts.ransack(params[:q])
    @texts = @q.result

  end

  def show
    @text = Text.find(params[:id])
  end
end
