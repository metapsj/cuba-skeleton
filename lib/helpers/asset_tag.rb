module Helpers
  module AssetTag

    def image_tag(source, options={})
      # file_path = image_path(name)
      # <img src="/assets/icon.png" />    
    end

    def javascript_include_tag(sources)
      # file_path = javascript_path(name)
      # <script src="/assets/common.js"></script>
    end

    def stylesheet_link_tag(*sources)
      # file_path = stylesheet_link_path(name)
      # <link href="/assets/application.css" rel="stylesheet" />
    end

  end
end
