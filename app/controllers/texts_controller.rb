class TextsController < ApplicationController

    def index
<<<<<<< HEAD
        path_genre = request.fullpath.include?('sort')

        if !path_genre
            @texts = Text.data_sort(request)
            @sort = Text.sort_key(request)
        else 
            @texts = Text.genre_sort_method
=======
        if request.fullpath.include?('desc')
            @texts = current_user.texts.all.desc_sort
            @sort = "asc"
        else
            @texts = current_user.texts.all.asc_sort
            @sort = "desc"
>>>>>>> master
        end

        @first_text = Text.first
        @q = @texts.ransack(params[:q])
        @texts = @q.result

    end

<<<<<<< HEAD
    def show
        @text = Text.find(params[:id])
    end

=======
    # def text_params
    #     params.require(:text).permit(:genre, :title, :contents)
    # end
>>>>>>> master
end