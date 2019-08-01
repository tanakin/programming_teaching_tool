require 'rails_helper'
require 'csv'

RSpec.describe ImportCsv, type: :model do
  describe "csvファイルのインポート" do
    let(:csv) { "spec/fixtures/csv_test.csv" }

    it "csvデータがモデルに反映されること" do
  
      ImportCsv.import(csv)
      expect(Text.count).to eq 5
    end
  end
  
end
