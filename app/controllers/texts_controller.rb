class TextsController < ApplicationController
 
    def index
        @texts = Text.all.desc_sort
    end

end