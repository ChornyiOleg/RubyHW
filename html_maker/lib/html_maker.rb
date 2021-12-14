require 'nokogiri'

class Html
  def to_html(content, bypass_html = true, my_page = 'index.html')
    @status = content.gsub!(/^[a-zA-Z ]*$/, '') if bypass_html == false

    my_page = File.new('index.html', 'w+')
    my_page.puts "<!DOCTYPE html>"
    my_page.puts "  <head>"
    my_page.puts "    <meta charset='utf-8'>"
    my_page.puts "    <title>SoftsKILLER</title>"
    my_page.puts "    <script>"
    my_page.puts "      setInterval(()=>{ window.location.reload() }, 2000)"
    my_page.puts "    </script>"
    my_page.puts "  </head>"
    my_page.puts "  <body>"
    my_page.puts "  <p>Pet Content</p>"
    my_page.puts "    #{@status}"
    my_page.puts "  </body>"
    my_page.puts "</html>"
    my_page.close
  end

  def edit_html(content, my_page = 'index.html')
    File.open(my_page) { |my_page| Nokogiri::HTML(my_page) }
    @status << content
    my_page = File.open(my_page, 'w+')
    my_page.puts @status
    my_page.close
  end

  def open_html(my_page = 'index.html')
    system("xdg-open #{my_page}")
  end
end
