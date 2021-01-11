source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.2'
gem 'sqlite3', '~> 1.3.6', group: :development
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'activeadmin'
gem 'devise'
gem 'bootstrap', '~> 4.1.1'
gem 'jquery-rails'
gem 'mini_racer'


# markdown
gem 'redcarpet', '~> 3.5.1'
# シンタックスハイライト
gem 'coderay'

# railsコンソール用
gem 'rb-readline'

# 検索機能
gem 'ransack'

# login機能
gem 'devise'
gem 'devise-i18n-views'

# チャート
gem 'chart-js-rails', '~> 0.1.4'

# controllerからjavascriptへデータの受け渡し
gem 'gon'

# ページ遷移の時にJSが読み込まれないのを防ぐ
gem 'jquery-turbolinks'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'solargraph'
  # メール送信のテスト
  gem 'letter_opener'
  # デバック
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'rspec-rails'
end

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
