module Helpers
  module Url

    def asset_path(source, options={})
      # /javascripts/application.js
    end

    def asset_url(source, options={})
      # http://example.com/assets/application.j    
    end

    def image_path(source, options={})
      # => /assets/edit.png    
    end

    def image_url(source, options={})
      # file_path = image_path(name)
      # http://www.example.com/assets/edit.png
    end

    def javascript_path(source, options={})
      # /assets/common.js
    end

    def javascript_url(source, options={})
      # file_path = javascript_path(name)
      # http://www.example.com/assets/common.js
    end

    def stylesheet_link_path(source, options={})
      # /assets/application.css
    end

    def stylesheet_link_url(source, options={})
      # file_path = stylesheet_link_path(name)
      # http://www.example.com/assets/application.css
    end

  end
end
