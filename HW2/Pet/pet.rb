# frozen_string_literal: true

class Pet
  attr_accessor :name, :health, :horror, :die, :calm

  movies = ['Saw', 'Final Destination', 'Evil Dead', 'Scream', 'Silent Hill'].freeze

  def initialize(name, health, horror, calm, die)
    @name = name
    @health = health
    @horror = horror
    @calm = calm
    @die = die
  end

  puts 'What will be a SoftsKILLER name:'
  name = gets.chomp
  pet = Pet.new(name, 100, 10, 100, 10)

  puts '**************************************************************'
  puts "|         SoftsKILLER #{pet.name} was born to DIE!                |"
  puts '**************************************************************'
  puts "Health #{pet.health}, Horror #{pet.horror}, Calm, #{pet.calm}, Die #{pet.die}"
  puts ''

  loop do
    puts '------------------------------------------------------'
    puts "                      \nYour action with #{pet.name}:
     1 - Watch a horror movie, 2 - Calm down, buddy! 3 - Need a psychologist 4 - Tell him a way to die
     \nChoose an action or press the Enter to be indifferent :("
    if pet.health.positive?
      destiny = gets.chomp
      case destiny

      when '1'
        puts "You are watching #{movies.sample} together"
        pet.health -= rand(25) if pet.health.positive?
        pet.horror += rand(25) if pet.horror <= 74
        pet.calm -= rand(25) if pet.calm >= 26
        pet.die += rand(25) if pet.die <= 74
        puts "#{pet.name} enjoys the movie!"

      when '2'
        puts "Try to calm #{pet.name}"
        pet.horror += rand(20) if pet.horror.positive? && (pet.horror < 79)
        pet.calm += rand(10) if pet.calm < 89
        pet.die += rand(25) if pet.calm < 74
        puts "#{pet.name} is slightly calmed down! But... I'm not sure"

      when '3'
        puts 'We should go to the doctor!'
        pet.health -= rand(10) if pet.health >= 11 && pet.health <= 100
        pet.horror -= rand(10) if pet.horror < 100 && pet.horror > 11
        pet.calm -= rand(10) if pet.calm.positive? && pet.calm < 89
        pet.die += rand(20) if pet.die.positive? && pet.die < 79
        puts "#{pet.name} he hates state doctors who bought a degree for a pig, but he is thinking about Rorschach test"

      when '4'
        puts 'I know the best way to die for you!'
        puts 'Tell me, tell me, please!!!'
        puts '---------------------------------------------------------------------------'
        puts 'Choose a way to DIE using 1, 2, 3, 4 or press the Enter to be indifferent :('

        death = gets.chomp
        case death

        when '1'
          puts 'Let\'s kill, Beatrice!'
          puts 'Ok, call me Bill!'
          pet.health -= rand(25)
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die = 100 if pet.die.positive?
          puts 'Bill killed himself'

        when '2'
          puts 'Let\'s swim, Jack!'
          puts 'Ok, Rose, call me Titanic!'
          pet.health -= rand(25)
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die = 100 if pet.die.positive?
          puts 'Jack drowned'

        when '3'
          puts 'Let\'s hang on, buddy!'
          puts 'I was just about to hang my body!'
          pet.health -= rand(25)
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die = 100 if pet.die.positive?
          puts 'Buddy hung himself'

        when '4'
          puts 'Let\'s freeze, Sub-Zero!'
          puts 'Ok, call me icicle'
          pet.health -= rand(25)
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die = 100 if pet.die.positive?
          puts 'Sub-zero froze to death'
        else
          puts 'I\'m tired of waiting for you to tell me the best way to die... Farewell!'
          pet.health -= rand(25)
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die = 100 if pet.die.positive?
          puts "#{pet.name} died from waiting to die"
        end
      when ''
        puts 'Press the Enter to be indifferent :('
        pet.health -= rand(25) if pet.health >= 26
        pet.horror += rand(25) if pet.horror <= 74
        pet.calm -= rand(25) if pet.calm >= 26
        pet.die += rand(25) if pet.die <= 74
      else
        puts "You entered #{destiny}, what is it?"
        puts 'Try again! '
        next
      end

      if pet.health <= 0
        pet.health = 0
        puts "\n\n#{pet.name} died senselessly!!! He will be reborn"
      elsif pet.horror >= 100
        pet.horror = 100
        puts "\n\n#{pet.name} horribly died!!! He will be reborn"
      elsif pet.calm <= 0
        pet.calm = 0
        puts "\n\n#{pet.name} didn't worry about death!!! He died happy! He will be reborn"
      elsif pet.die >= 100
        pet.die = 100
        puts "\n\n#{pet.name} chose the best way to die. He will be reborn"
      end
    end

    puts "HEALTH: #{pet.health}, HORROR: #{pet.horror}, CALM: #{pet.calm}, DIE: #{pet.die}"

    break unless pet.health.positive? && pet.horror < 100 && pet.calm.positive? && pet.die < 100
  end
  end





