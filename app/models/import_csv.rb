class ImportCsv < ApplicationRecord

  def self.import(path)
    
    Text.destroy_all

    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        title: row['title'],
        contents: row['contents'],
        genre: row['genre']
      }
    end

    begin
      Text.create!(list)
    rescue ActiveModel::UnknownAttributeError => e
      puts e
    end
  end
end