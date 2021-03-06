# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
  def nav_item(text, url)
    html_class = 'nav-item ml-2 ml-lg-3 mr-2 mr-lg-3'
    html_class <<  ' active font-weight-bold' if current_page.url == url

    content_tag :li, class: html_class do
      link_to text, url, class: 'nav-link'
    end
  end

  def cws_url
    'https://chrome.google.com/webstore/detail/ccenjkdmegiaincjjefjjigebcibjdgn'
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
end
