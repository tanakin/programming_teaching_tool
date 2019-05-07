class Text < ApplicationRecord
    
    scope :asc_sort, ->{ order(id: :asc)}
    scope :desc_sort, ->{ order(id: :desc)}

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

end
