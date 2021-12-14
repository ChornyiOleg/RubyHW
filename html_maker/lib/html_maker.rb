require 'sanitize'

def makeHTML(health, horror, calm, die, info, bypass_html = true)
  file = File.open('index.html', 'w')

  info = info.gsub!(/[<>]/, '') if bypass_html == false

  file.puts("<!DOCTYPE html>
    <head>
        <title> SoftsKILLER </title>
    </head>
    <body>
        <h1>Pet's DIE/h1>
        <hr/>")

  if die >= 99
    file.puts('<h1>💀 I\'m died</h1>')
  elsif 40 < die < 60
    file.puts('<h1>😐 I will die</h1>')
  elsif 10 < die < 39
    file.puts('<h1>😀 I want to die</h1>')
  else

  end

  file.puts("<h3>")
  file.puts(info)
  file.write("
      </h3>
    </body>
    </html>
      ")

  Sanitize.document(file,
                    :allow_doctype => true,
                    :elements => ['html']
  )

  file.close
end
