source 'https://rubygems.org'

gem 'rails-components', git: 'https://github.com/sagmor/rails-components.git'

%w{core worker api frontend}.each do |component|
  gem component, path: "components/#{component}"
end

group :development do
  gem 'spring'
  gem 'quiet_assets', '~> 1.0.3'
end

group :development, :test do
  gem "rspec-rails"
end

group :test do
end
