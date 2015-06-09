# Deploy to gh-pages
activate :deploy do |deploy|
  deploy.method = :git
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :partials_dir, 'views'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Remove directory file extensiosn
activate :directory_indexes
set :directory_indexes, true

# Build-specific configuration
configure :build do

  # Use relative URLs
  activate :relative_assets
  set :relative_assets, true
end
