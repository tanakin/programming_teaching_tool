class TextsController < ApplicationController

    def index
        path_desc = request.fullpath.include?('desc')
        @texts = Text.data_sort(path_desc)
        @sort = Text.sort_key(path_desc)
        @first_text = Text.first
    end

    def show
        @text = Text.find(params[:id])
    end

end