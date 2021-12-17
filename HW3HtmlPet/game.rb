require_relative 'petty'
#require 'html_maker'

 class Game

  def create_pet

    p 'What will be a SoftsKILLER name:'
    name = gets.chomp
    @pet = Pet.new(name)

    p '**************************************************************'
    p "|         SoftsKILLER #{@pet.name.capitalize} was born to DIE💜!                |"

    p '**************************************************************'

    #html
  end

  def start_game
    create_pet
    help
    #MakeHtml.new.open_in_browser

    while @pet.health.positive? && @pet.horror < 100 && @pet.calm.positive? && @pet.die < 100

      print "\n Your action with #{@pet.name}(to show info press `0`, then `Enter`): "
      destiny = gets.chomp
      break if destiny == '5'

      case destiny

      when '0'
        help
      when '1'
        @pet.movie

                #html
      when '2'
        @pet.relax

           #html
      when '3'
        @pet.psycho

           #html
      when '4'
        @pet.death

           #html
      when ''
        @pet.emotion = '🤨'
        p "Press the Enter to be indifferent #{@pet.emotion}"

           #html
      else
        @pet.emotion = '🤔'
        p "You entered #{destiny}, what is it? #{@pet.emotion}"
        p 'Try again!'

      end
    end
  end

   def help
     p "Choose an action with #{@pet.name.capitalize}:or press the Enter to be indifferent 🤨
      0️⃣ - Help ❔
      1️⃣ - Watch a horror movie 👻
      2️⃣ - Calm down, buddy! 🤤
      3️⃣ - Need a psychologist 🤕
      4️⃣ - Tell him a way to die 🖤
      6️⃣- Exit game
       "
   end
 end

Game.new.start_game
