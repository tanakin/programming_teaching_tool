class TextsController < ApplicationController

    def index
        path_desc = request.fullpath.include?('desc')
        path_genre = request.fullpath.include?('sort')

        if !path_genre
            @texts = Text.data_sort(path_desc)
            @sort = Text.sort_key(path_desc)
        else 
            @texts = Text.genre_sort_method
        end
            
        @first_text = Text.first

end

    def show
        @text = Text.find(params[:id])
    end

end