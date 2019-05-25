class Text < ApplicationRecord
  
  scope :asc_sort, ->{ order(id: :asc)}
  scope :desc_sort, ->{ order(id: :desc)}

  def self.ransackable_attributes(auth_object = nil)
    %w[title contents]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

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

  def self.path_include_desc?(path)
    path.fullpath.include?('desc')
  end
  
end
