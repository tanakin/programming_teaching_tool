class ImportCsv < ApplicationRecord

  def self.import
    
    Text.destroy_all

    path = File.join Rails.root, "db/csv_data/csv_data.csv"

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