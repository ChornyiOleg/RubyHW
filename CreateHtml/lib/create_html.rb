require 'nokogiri'

class CreateHtml
  def create_html (content, bypass_html = true, file_name = 'index.html')
    markup = gets.chomp
    markup = content.gsub!(/[<>]/, '') if bypass_html
    #    markup = content if bypass_html

    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts "<!DOCTYPE HTML>"
    f.puts '<html lang="en">'
    f.puts "  <head>"
    f.puts '    <meta charset="UTF-8">'
    f.puts "    <title>My Pet</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <p>#{markup}</p>"
    f.puts "  </body>"
    f.puts "</html>"
    f.close

  end
end

CreateHtml.new.create_html("markup", true)
