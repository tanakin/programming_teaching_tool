class Text < ApplicationRecord
  scope :asc_sort, ->{ order(id: :asc)}
  scope :desc_sort, ->{ order(id: :desc)}

  def self.ransackable_attributes(auth_object = nil)
    %w[title contents]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
