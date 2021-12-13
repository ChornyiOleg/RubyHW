require 'nokogiri'

class HtmlCreate
  #def create_html(content, bypass_html = true, file_name = 'index.html')
  # markup = gets.chomp
  # markup = content.gsub!(/[<>]/, '') if bypass_html
  # markup = content if bypass_html

  def html_create(content, bypass_html, file_name = 'index.html')
    markup = gets.chomp
    markup = content.gsub!(/[<>]/, '') if bypass_html == false
    markup = content unless bypass_html == false

    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts '<!DOCTYPE html>'
    f.puts '  <html lang=\'en\'>'
    f.puts '  <head>'
    f.puts '    <meta charset=\'utf-8\'>'
    f.puts '    <meta name=\'viewport\'
         content=\'width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\'>'
    f.puts '  <meta http-equiv=\'X-UA-Compatible\' content=\'ie=edge\'>'
    f.puts '    <title>SoftsKILLER!</title>'
    f.puts '  </head>'
    f.puts '  <body>'
    f.puts '    <script>'
    f.puts '      setInterval(()=>{ window.location.reload() }, 2500)'
    f.puts '    </script>'
    f.puts "    <p>#{markup}</p>"
    f.puts '  </body>'
    f.puts '</html>'
    f.close
  end
  def update_html(content, file_name = 'index.html')
    doc = File.open(file_name) { |f| Nokogiri::HTML(f) }
    doc.at('body') << content
    file = File.open(file_name, 'w+')
    file.puts doc
    file.close
  end
  def open_in_browser(file = 'index.html')
    system("xdg-open #{Dir.pwd}/#{file}")
  end
end
