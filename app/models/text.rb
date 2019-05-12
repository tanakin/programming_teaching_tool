class Text < ApplicationRecord
    
    scope :asc_sort, ->{ order(id: :asc)}
    scope :desc_sort, ->{ order(id: :desc)}
    scope :genre_sort, ->{ order(genre: :desc, id: :asc)}

    def self.data_sort(path)
        if path
            Text.all.desc_sort
        else
            Text.all.asc_sort
        end
    end
    
    def self.sort_key(path)
        if path
            "asc"
        else
            "desc"
        end
    end

    def self.genre_sort_method
        Text.all.genre_sort
    end

end
