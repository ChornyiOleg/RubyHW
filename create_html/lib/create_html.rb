

def create_html(content, file_name = 'index', bypass_html = false)
  bypass_html ? content : content.gsub!(%r{<([^>]+?)([^>]*?)>(.*?)</\1>}, '')
  output_file = File.expand_path("#{file_name}.html")
  file_html = <<~HTML
    <!DOCTYPE html>
    <html>
      <head>
        <title>My SoftsKILLER</title>
        <style type="text/css">
        body {
          font-size: 16px;
          text-align: left;
        }
        </style>
      </head>
      <body>
      #{content}
      </body>
    </html>
  HTML
  File.open(output_file, 'w') { |f| f.write file_html }
end
