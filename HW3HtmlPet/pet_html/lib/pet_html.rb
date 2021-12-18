class PetHtml
  def initialize(pet)
    @pet = pet
  end
  
  def make_html
    content = File.read("#{self.class.root}/pet_html.html")
    @html_new = "#{self.class.root}/pet_html_new.html"
    File.open(@html_new, 'w') {|f|
      content.gsub!('{{pet}}', @pet.class.to_s)
      content.gsub!('{{name}}', @pet.name) 
      content.gsub!('{{health}}', @pet.health.join(','))
      content.gsub!('{{horror}}', @pet.horror.to_s)
      content.gsub!('{{emotion}}', @pet.emotion)
      content.gsub!('{{result}}', @pet.result.join('<br>'))
      f.puts content    
    }
  end

  def open_html
    make_html    
    system("xdg-open #{@html_new}")
  end

  def self.root
    File.expand_path '..', __FILE__
  end
end
