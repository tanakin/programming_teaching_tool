class TextsController < ApplicationController

    def index
        
        @texts = Text.data_sort(request)
        @sort = Text.sort_key(request)

        @q = @texts.ransack(params[:q])
        @texts = @q.result

    end

    private

    def text_params
        params.require(:text).permit(:genre, :title, :contents)
    end
    
end