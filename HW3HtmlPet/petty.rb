require 'html_maker'

class Pet
  attr_accessor :name, :health, :horror, :calm, :die, :emotion, :result

  movies = ['Saw', 'Final Destination', 'Evil Dead', 'Scream', 'Silent Hill'].freeze

  def initialize(name, health, horror, calm, die, emotion, result)
    @name = name
    @health = health
    @horror = horror
    @calm = calm
    @die = die
    @emotion = emotion
    @result = result
  end

    puts 'What will be a SoftsKILLER name:'
    name = gets.chomp
    pet = Pet.new(name, 100, 10, 100, 10, '', 0)

    puts '**************************************************************'
    puts "|         SoftsKILLER #{pet.name} was born to DIE💜!                |"
    puts '**************************************************************'
    puts "Health #{pet.health}, Horror #{pet.horror}, Calm, #{pet.calm}, Die #{pet.die}, Emotion #{pet.emotion}"
    puts ''

    loop do
      puts '------------------------------------------------------'
      puts "                      \nYour action with #{pet.name}:
     1 - Watch a horror movie, 2 - Calm down, buddy! 3 - Need a psychologist 4 - Tell him a way to die
     \nChoose an action or press the Enter to be indifferent 🤨"

      if pet.health.positive?
        destiny = gets.chomp
        case destiny

        when '1'
          puts "You are watching #{movies.sample} together"
          pet.emotion = '👀'
          pet.health -= rand(25) if pet.health.positive?
          pet.horror += rand(25) if pet.horror <= 74
          pet.calm -= rand(25) if pet.calm >= 26
          pet.die += rand(25) if pet.die <= 74
          puts "#{pet.name} enjoys the movie!#{pet.emotion}"


        when '2'
          puts "Try to calm #{pet.name}"
          pet.emotion = '🤗'
          pet.horror += rand(20) if pet.horror.positive? && (pet.horror < 79)
          pet.calm += rand(10) if pet.calm < 89
          pet.die += rand(25) if pet.calm < 74
          puts "#{pet.name} is slightly calmed down!#{pet.emotion} But... I'm not sure"

        when '3'
          puts 'We should go to the doctor!'
          pet.emotion = '🥵'
          pet.health -= rand(10) if pet.health >= 11 && pet.health <= 100
          pet.horror -= rand(10) if pet.horror < 100 && pet.horror > 11
          pet.calm -= rand(10) if pet.calm.positive? && pet.calm < 89
          pet.die += rand(20) if pet.die.positive? && 79 > pet.die
          puts "#{pet.name} he hates state doctors who bought a degree for a pig, but he is thinking about Rorschach test #{pet.emotion}"

        when '4'
          pet.emotion = '🤓'
          puts "I know the best way to die for you! #{pet.emotion}"
          pet.emotion = '🙏'
          puts "Tell me, tell me, please!!! #{pet.emotion}"

          puts '---------------------------------------------------------------------------'

          puts 'Choose a way to DIE using 1, 2, 3, 4 or press the Enter to be indifferent 🤨'

          death = gets.chomp
          case death

          when '1'
            puts 'Let\'s kill, Beatrice!'
            puts 'Ok, call me Bill!'
            pet.result = '🗡'
            pet.health -= rand(25)
            pet.horror += rand(25)
            pet.calm -= rand(25)
            pet.die = 100 if pet.die.positive?
            puts "Bill killed himself #{pet.result}"

          when '2'
            puts 'Let\'s swim, Jack!'
            puts 'Ok, Rose, call me Titanic!'
            pet.result = '🌊'
            pet.health -= rand(25)
            pet.horror += rand(25)
            pet.calm -= rand(25)
            pet.die = 100 if pet.die.positive?
            puts "Jack drowned #{pet.result}"
            html

          when '3'
            puts 'Let\'s hang on, buddy!'
            puts 'I was just about to hang my body!'
            pet.result = '🧟️'
            pet.health -= rand(25)
            pet.horror += rand(25)
            pet.calm -= rand(25)
            pet.die = 100 if pet.die.positive?
            puts "Buddy hung himself #{pet.result}"

          when '4'
            puts 'Let\'s freeze, Sub-Zero!'
            puts 'Ok, call me icicle'
            pet.result = '🥶'
            pet.health -= rand(25)
            pet.horror += rand(25)
            pet.calm -= rand(25)
            pet.die = 100 if pet.die.positive?
            puts "Sub-zero froze to death #{pet.result}"

          else
            puts 'I\'m tired of waiting for you to tell me the best way to die... Farewell!'
            pet.result = '💥'
            pet.health -= rand(25)
            pet.horror += rand(25)
            pet.calm -= rand(25)
            pet.die = 100 if pet.die.positive?
            puts "#{pet.name} died from waiting to die #{pet.result}"

          end
        when ''
          pet.emotion = '🤨'
          puts "Press the Enter to be indifferent #{pet.emotion}"
          pet.health -= rand(25) if pet.health >= 26
          pet.horror += rand(25) if pet.horror <= 74
          pet.calm -= rand(25) if pet.calm >= 26
          pet.die += rand(25) if pet.die <= 74

        else
          pet.emotion = '🤔'
          puts "You entered #{destiny}, what is it? #{pet.emotion}"
          puts 'Try again!'
          next
        end

        if pet.health <= 0
          pet.health = 0
          pet.emotion = '🤯'
          puts "\n\n#{pet.name} died senselessly!!! He will be reborn #{pet.emotion}"
        elsif pet.horror >= 100
          pet.horror = 100
          pet.emotion = '💀'
          puts "\n\n#{pet.name} horribly died!!! He will be reborn #{pet.emotion}"
        elsif pet.calm <= 0
          pet.calm = 0
          pet.emotion = '🤡'
          puts "\n\n#{pet.name} didn't worry about death!!! He died happy! He will be reborn #{pet.emotion}"
        elsif pet.die >= 100
          pet.die = 100
          pet.emotion = '💣'
          puts "\n\n#{pet.name} chose the best way to die. He will be reborn #{pet.emotion}"
        end
      end
      info = "HEALTH: #{pet.health}, HORROR: #{pet.horror}, CALM: #{pet.calm}, DIE: #{pet.die}"
      puts info
      HTMLSaver.save(info, bypass_html: true)
      break unless pet.health.positive? && pet.horror < 100 && pet.calm.positive? && pet.die < 100
    end
      def info
      info = <<~INFO
        <p style="font-family:'Courier New'; text-align: center">health: #{@health}</p>
        <p style="font-family:'Courier New'; text-align: center">horror: #{@horror}</p>
        <p style="font-family:'Courier New'; text-align: center">calm: #{@calm}</p>
        <p style="font-family:'Courier New'; text-align: center">die: #{@die}</p>

       INFO
       info += if @health <= 5
              '<p style="text-align: center; font-family:\'Courier New\'; font-size: 40px">He will die<br>💀</p>'
            elsif @calm <= 5
              '<p style="text-align: center; font-family:\'Courier New\'; font-size: 40px">He almost die<br>💀</p>'
            else
              '<p style="text-align: center; font-family:\'Courier New\'; font-size: 40px">He already die<br>🐼</p>'
            end
       info
      end
end
