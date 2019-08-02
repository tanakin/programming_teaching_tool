require 'rails_helper'

RSpec.describe ImportCsv, type: :model do
  describe "#import" do
    let(:csv) { "spec/fixtures/csv_test.csv" }
    let(:csv_test) { Text.find_by(title: 'タイトル1') }

    before do
      ImportCsv.import(csv)
    end

    it "csvデータ件数とがTextモデルにインポートされた件数が等しいこと" do
      expect(Text.count).to eq 5
    end

    it "titleの値が取得できること" do
      expect(csv_test.title).to eq "タイトル1"
    end
    
    it "contentsの値が取得できること" do
      expect(csv_test.contents).to eq "コンテンツ1"
    end

    it "genreの値が取得できること" do
      expect(csv_test.genre).to eq "ジャンル1"
    end
  end
  
end
