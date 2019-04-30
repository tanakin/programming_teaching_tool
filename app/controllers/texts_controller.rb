class TextsController < ApplicationController

    def index
        if request.fullpath.include?('desc')
            @texts = Text.all.desc_sort
            @sort = "asc"
        else
            @texts = Text.all.asc_sort
            @sort = "desc"
        end

    end



    private

    def text_params
    
        params.require(:text).permit(:genre, :title, :content)

    end

end