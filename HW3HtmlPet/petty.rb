class Pet
  attr_accessor :name, :health, :horror, :calm, :die, :emotion, :result, :say

  def initialize(name)
    @name = name
    @health = 100
    @horror = 10
    @calm = 100
    @die = 10
    @emotion = emotion
    @result = result
    @say = say
  end
end

MOVIES = ['Saw', 'Final Destination', 'Evil Dead', 'Scream', 'Silent Hill'].freeze
MAX_POINTS = 100

p 'What will be a SoftsKILLER name:'
name = gets.chomp
pet = Pet.new(name.capitalize)

p '**************************************************************'
p "***---- SoftsKILLER #{pet.name.capitalize}💜 was born to DIE!------------***"
p '**************************************************************'
p "Health💗️‍: #{pet.health}/#{MAX_POINTS}, Horror👻: #{pet.horror}/#{MAX_POINTS}, Calm🙂: #{pet.calm}/#{MAX_POINTS}, Die🖤: #{pet.die}/#{MAX_POINTS}"

loop do
  p '------------------------------------------------------'
  p "Your action with #{pet.name}:"
  p '1 - Watch a horror movie👿, 2 - Calm down, buddy!🤫, 3 - Need a psychologist💊, 4 - Tell him a way to die🧨'
  p 'Choose an action or press the Enter to be indifferent 🤨'

  if pet.health.positive?
    destiny = gets.chomp
    case destiny

    when '1'
      p 'Let\'s watch the best horror movie!'
      p pet.say = 'Oh! I like it as Lecter likes flesh juice!'
      p "You are watching #{MOVIES.sample} together"
      pet.emotion = '🤓'
      p "#{pet.name} enjoys the movie!#{pet.emotion}"
      pet.health -= rand(25) if pet.health.positive?
      pet.horror += rand(25) if pet.horror <= 74
      pet.calm -= rand(25) if pet.calm >= 26
      pet.die += rand(25) if pet.die <= 74

    when '2'
      p "Try to calm #{@name}"
      p 'Don\'t be afraid... the most horrible movie is yet to come '
      pet.emotion = '🤗'
      p "#{pet.name} is slightly calmed down!#{pet.emotion} But... I'm not sure"
      pet.horror += rand(20) if pet.horror.positive? && (pet.horror < 79)
      pet.calm += rand(10) if pet.calm < 89
      pet.die += rand(25) if pet.calm < 74

    when '3'
      p 'We should go to the doctor!'
      p pet.say = 'I agree! I must see this crazy psychologist'
      pet.emotion = '🧐'
      p "#{pet.name} hates state doctors who bought a degree for a pig, but he is thinking about Rorschach test #{@emotion}"
      pet.health -= rand(10) if pet.health >= 11 && pet.health <= 100
      pet.horror -= rand(10) if pet.horror < 100 && pet.horror > 11
      pet.calm -= rand(10) if pet.calm.positive? && pet.calm < 89
      pet.die += rand(20) if pet.die.positive? && pet.die < 79

    when '4'
      p 'I know the best way to die for you!'
      pet.emotion = '🙏'
      p pet.say = "Tell me, tell me, please!!! #{pet.emotion}"
      p '---------------------------------------------------------------------------'
      p 'Choose a way to DIE using 1, 2, 3, 4 or press the Enter to be indifferent 🤨'



      death = gets.chomp
      case death

      when '1'
        pet.emotion = '🗡'
        pet.result = '💥'
        p 'Let\'s kill, Beatrice!'
        p pet.say = "Ok, call me Bill#{pet.emotion}!"
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die = 100 if pet.die.positive?
        p "Bill killed himself #{pet.result}"

      when '2'
        pet.emotion = '🚢'
        pet.result = '🌊'
        p 'Let\'s swim, Jack!'
        p pet.say =  "Ok, Rose, call me Titanic#{pet.emotion}!"
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die = 100 if pet.die.positive?
        p "Jack drowned#{pet.result}"

      when '3'
        pet.emotion = '‍💫'
        pet.result = '🧟‍♂️'
        p 'Let\'s hang on, buddy!'
        p pet.say =  "I was just about to hang my body#{pet.emotion}!"
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die = 100 if pet.die.positive?
        p "Buddy hung himself#{pet.result}"

      when '4'
        pet.emotion = '💧'
        pet.result = '🥶'
        p "Let's freeze, Sub-Zero!"
        p "Ok, call me icicle#{pet.emotion}!"
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die = 100 if pet.die.positive?
        p "Sub-zero froze to death#{pet.result}"
      else
        pet.emotion = '🥴'
        pet.result = '💉'
        p "I'm tired of waiting for you to tell me the best way to die... Farewell! #{pet.emotion}"
        pet.health -= rand(25)
        pet.horror += rand(25)
        pet.calm -= rand(25)
        pet.die = 100 if pet.die.positive?
        p "#{pet.name} died from waiting to die #{pet.result}"
      end
    when ''

      p 'Press the Enter to be indifferent 🤨'
      pet.health -= rand(25) if pet.health >= 26
      pet.horror += rand(25) if pet.horror <= 74
      pet.calm -= rand(25) if pet.calm >= 26
      pet.die += rand(25) if pet.die <= 74
    else
      pet.emotion = '🤔'
      p "You entered #{destiny}, what is it?#{pet.emotion}"
      p 'Try again!'
      next
    end

    if pet.health <= 0
      pet.health = 0
      pet.emotion = '🤯'
      p "#{pet.name} died senselessly#{pet.emotion}!!! He will be reborn"
    elsif pet.horror >= 100
      pet.horror = 100
      pet.emotion = '💀'
      p "#{pet.name} horribly died#{pet.emotion}!!! He will be reborn"
    elsif pet.calm <= 0
      pet.calm = 0
      pet.emotion = '🥳'
      p "#{pet.name} didn't worry about death#{pet.emotion}!!! He died happy! He will be reborn"
    elsif pet.die >= 100
      pet.die = 100
      pet.emotion = '💣'
      p "#{pet.name} chose the best way to die#{pet.emotion}. He will be reborn"
    end
  end

  p "Health: #{pet.health}/#{MAX_POINTS}, Horror: #{pet.horror}/#{MAX_POINTS}, Calm: #{pet.calm}/#{MAX_POINTS}, Die #{pet.die}/#{MAX_POINTS}"

  break unless pet.health.positive? && pet.horror < 100 && pet.calm.positive? && pet.die < 100
end
