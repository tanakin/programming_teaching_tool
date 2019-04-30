class Text < ApplicationRecord
    scope :asc_sort, ->{ order(id: :asc)}
    scope :desc_sort, ->{ order(id: :desc)}
end
