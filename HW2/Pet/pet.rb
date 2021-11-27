class Pet
  attr_accessor :name, :health, :horror, :die, :calm
 
  movies = ['Saw', 'Final Destination', 'Evil Dead', 'Scream', 'Silent Hill'].freeze

  def initialize (name, health, horror, calm, die)
    @name = name
    @health = health
    @horror = horror
    @calm = calm
    @die = die
  end
 puts "What will be a SoftsKILLER name: "
 name = gets.chomp().to_s
 pet = Pet.new(name, 100, 0, 100, 0)

 puts "------------------------"
 puts ("    SoftsKILLER #{pet.name} was born to DIE!")
 puts "------------------------"
 puts "\nHealth\t#{pet.health}\nHorror\t#{pet.horror}\nCalm\t#{pet.calm}\nDie\t#{pet.die}"
 puts ""
 puts "time..."
 begin
 puts "-------------------"
  puts "\n|Health\t#{pet.health -= rand(20)}|\n|Horror\t#{pet.horror += rand(20)}|\n|Calm\t#{pet.calm -=rand(20)}|\n|Die\t#{pet.die += rand(20)}|"
  puts "-------------------"
    puts "\nYour action with #{pet.name}:
     1 - Watch a horror movie  
     2 - Calm down, buddy
     3 - Need a psychologist
     4 - Tell him a way to die

     Choose an action or press the Enter to be indifferent :("
 
   if pet.health != 0
   destiny = gets.chomp().to_s
    case destiny
    when "1"
      puts "You are wathcing #{movies.sample.to_s} together"
        if pet.health > 0 
           pet.health -= rand(25)
        end
          pet.horror += rand(25)
          pet.calm -= rand(25)
          pet.die += rand(25)
      puts "#{pet.name} enjoys the movie!"
      
      when "2"
        puts "Try to calm #{pet.name}"
        if pet.horror > 0
           pet.horror -= rand(10)
        end
           pet.calm += rand(10)
           pet.die -= rand(10)
        puts "#{pet.name} is slightly calmed dowm!"

      when "3"
        puts "We should go to the doctor "
        pet.health += rand(25)
        pet.horror -= rand(10)
        if pet.calm > 0
           pet.calm += rand(10)
        end
        pet.die -= rand(10)
        puts "#{pet.name} hates the doctors, but he is thinking about Rorschach test"

     when "4"
        puts "I know the best way to die for you!"
        puts "Tell me, tell me, please!!!"
        death = gets.chomp().to_s
        case death

        when "1"
            puts "Let\'s kill, Beatrice!"
            puts "Ok, call me Bill!"
              pet.health += rand(25)
              pet.horror += rand(25)
              pet.calm -= rand(25)
              if pet.die > 0
                 pet.die = 100
              end
            puts "Bill killed himself"

        when "2"
            puts "Let\'s swim, Jack!"
            puts "Ok, Rose, call me Titanic!"
              pet.health += rand(25)
              pet.horror += rand(25)
              pet.calm -= rand(25)
              if pet.die > 0
                 pet.die = 100
              end
            puts "Jack drawned" 

        when "3"
            puts "Let\'s hang on, buddy!"
            puts "I was just about to hang my body!"
              pet.health += rand(25)
              pet.horror += rand(25)
              pet.calm -= rand(25)
              if pet.die > 0
                 pet.die = 100
              end
            puts "Buddy hung himself" 

        when "4"
            puts "Let\'s freeze, Sub-Zero!"
            puts "Ok, call me icecle"
              pet.health += rand(25)
              pet.horror += rand(25)
              pet.calm -= rand(25)
              if pet.die > 0
                 pet.die = 100
              end
            puts "Sub-zero froze to death" 
          end
           
    when ""
        puts "Press the Enter to be indifferent :("
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die += rand(25)
    else
      puts "You entered #{destiny}, what is it?"
      puts "Try again! "
      next
    end
  if  pet.health <= 0
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
        puts "\n\n#{pet.name} chose the best way to die. He will be reborn "
  end
 end
              
   puts "\nHEALTH\t#{pet.health}\nHORROR\t#{pet.horror}\nCAlM\t#{pet.calm}\nDEATH\t#{pet.die}"
 
 end  while pet.health > 0 && pet.horror < 100 && pet.calm > 0 && pet.die < 100
end