require 'csv'

namespace :csv_import do
   
    desc "テキストをCSVファイル形式でインポートする"

        task texts: :environment do 
            
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
