source 'https://rubygems.org'

# 12-9-16:
ruby '2.3.1'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # 12-11-16:
  # gem 'bullet' # bust N+1 queries, to configure, see homepage
  gem 'better_errors' # for `Session Expired` see homepage for puma server caveat
  # gem 'binding_of_caller' # slows error page loading significantly; bundle only when needed
  gem 'meta_request' # after better_errors, according to RailsCasts 402
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# 12-11-16:
gem 'paperclip', '~> 5.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
# 12-9-16:
gem 'simple_form', '~> 3.3', '>= 3.3.1'
gem 'haml-rails', '~> 0.9.0'
