# README
- 概要  
  テキスト教材を一覧表示。  
  そこから各々のテキスト教材をに見ることができます。  
  各テキスト教材は理科度をチェックでき、理解度をグラフで見ることができます。

- 開発環境
  - Ruby version  2.5.1
  - Rails version  5.2.2
  - SQLite3 version 1.3.13

- CSVデータでの初期データの投入
  - コンソール画面でrakeタスク(csv_import:texts)を実行  
    ```bundle exec rake csv_import:texts```