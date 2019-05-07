class TextsController < ApplicationController

    def index
        path_desc = request.fullpath.include?('desc')
        @texts = Text.data_sort(path_desc)
        @sort = Text.sort_key(path_desc)
    end


    private

    def text_params
    
        params.require(:text).permit(:genre, :title, :content)

    end

end