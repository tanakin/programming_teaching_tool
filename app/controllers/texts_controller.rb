class TextsController < ApplicationController

    def index
        path_desc = request.fullpath.include?('desc')
        @texts = Text.data_sort(path_desc)
        @sort = Text.sort_key(path_desc)
    end

    def show
        @text = Text.find(params[:id])
    end

end