namespace :csv_import do
  desc "CSVデータをインポートするタスク"

  task texts: :environment do
    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    
    ImportCsv.import(path)
  end
end
