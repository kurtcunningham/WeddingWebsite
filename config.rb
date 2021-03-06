# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Sprockets
activate :sprockets

# Markdown
set :markdown_engine, :kramdown

# Google Analytics
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-98644660-1'
end

# Directory Settings
set :css_dir,    'stylesheets'
set :js_dir,     'scripts'
set :images_dir, 'images'
set :relative_links, false

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :directory_indexes
  activate :gzip
  activate :relative_assets
end

# Deploy To GH-Pages
activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
end
