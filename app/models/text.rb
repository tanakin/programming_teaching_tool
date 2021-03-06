class Text < ApplicationRecord

    has_many :understandings, dependent: :destroy

    scope :asc_sort, ->{ order(id: :asc)}
    scope :desc_sort, ->{ order(id: :desc)}
    scope :genre_sort, ->{ order(genre: :desc, id: :asc)}

    def self.data_sort(request)
        if self.path_include_desc?(request)
            Text.all.desc_sort
        else
            Text.all.asc_sort
        end
    end
    
    def self.sort_key(request)
        if self.path_include_desc?(request)
            "asc"
        else
            "desc"
        end
    end

    def self.genre_sort_method
        Text.all.genre_sort
    end

    
    def self.ransackable_attributes(auth_object = nil)
        %w[title contents genre user_id]
    end
    
    def self.ransackable_associations(auth_object = nil)
        []
    end
    
    private

    def self.path_include_desc?(path)
        path.fullpath.include?('desc')
    end
end
