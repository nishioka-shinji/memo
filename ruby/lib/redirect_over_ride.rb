# railsでredirect_toメソッドのhttp通信をhttps通信に
def redirect_to(options={}, response_options={})
  if Rails.env == "development"
    options = url_for(options) if options.is_a?(Hash)
    options =\
      # 絶対パス対応
      if options.match?(/^http/)
        options.gsub(/^http:/, "https:")
      # 相対パス対応
      else
        "https://#{request.host}#{options}"
      end
  end

  super(options, response_options)
end