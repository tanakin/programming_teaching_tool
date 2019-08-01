require 'rails_helper'

RSpec.describe ImportCsv, type: :model do
  describe "#import" do
    let(:csv) { "spec/fixtures/csv_test.csv" }

    before do
      ImportCsv.import(csv)
    end

    it "csvデータ件数とがTextモデルにインポートされた件数が等しいこと" do
      expect(Text.count).to eq 5
    end
  end
  
end
