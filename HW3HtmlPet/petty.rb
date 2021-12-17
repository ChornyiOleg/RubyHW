class Pet

  attr_accessor :name, :health, :horror, :calm, :die, :emotion, :result, :say

  MOVIES = ['Saw', 'Final Destination', 'Evil Dead', 'Scream', 'Silent Hill'].freeze

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

  def movie
    p 'Let\'s watch the best horror movie!'
    p @say = 'Oh! I like it as Lecter likes flesh juice!'
    p "You are watching #{MOVIES.sample} together"
    @emotion = '😱'
    p "#{@name} enjoys the movie!#{@emotion}"
    @health -= rand(25) if @health.positive?
    @horror += rand(25) if @horror <= 74
    @calm -= rand(25) if @calm >= 26
    @die += rand(25) if @die <= 74
  end

  def relax
    p "Try to calm #{@name}"
    p 'Don\'t be afraid... the most horrible movie is yet to come '
    @emotion = '🤗'
    p "#{@name} is slightly calmed down!#{@emotion} But... I'm not sure"
    @horror += rand(20) if @horror.positive? && (@horror < 79)
    @calm += rand(10) if @calm < 89
    @die += rand(25) if @calm < 74
  end

  def psycho
    p 'We should go to the doctor!'
    p @say ='I agree! I must see this crazy psychologist'
    @emotion = '😠'
    p "#{@name} he hates state doctors who bought a degree for a pig, but he is thinking about Rorschach test #{@emotion}"
    @health -= rand(10) if @health >= 11 && @health <= 100
    @horror -= rand(10) if @horror < 100 && @horror > 11
    @calm -= rand(10) if @calm.positive? && @calm < 89
    @die += rand(20) if @die.positive? && 79 > @die
  end

  def death
    @emotion = '😀'
    p "I know the best way to die for you! #{@emotion}"
    @emotion = '🙏'
    p @say = "Tell me, tell me, please!!! #{@emotion}"

    p '---------------------------------------------------------------------------'

    p 'Choose a way to DIE using 6, 7, 8, 9 or press the Enter to be indifferent 🤨'

    death = gets.chomp

    case death

    when '6'
      p 'Let\'s kill, Beatrice!'
      p @say = 'Ok, call me Bill!'
      @result = '🗡'
      @health -= rand(25)
      @horror += rand(25)
      @calm -= rand(25)
      @die = 100 if @die.positive?
      p "Bill killed himself #{@result}"
      #html

    when '7'
      p 'Let\'s swim, Jack!'
      p @say = 'Ok, Rose, call me Titanic!'
      @result = '🌊'
      @health -= rand(25)
      @horror += rand(25)
      @calm -= rand(25)
      @die = 100 if @die.positive?
      p "Jack drowned #{@result}"
      #html

    when '8'
      p 'Let\'s hang on, buddy!'
      p @say = 'I was just about to hang my body!'
      @result = '🧟‍♂️'
      @health -= rand(25)
      @horror += rand(25)
      @calm -= rand(25)
      @die = 100 if @die.positive?
      p "Buddy hung himself #{@result}"
      #html

    when '9'
      p 'Let\'s freeze, Sub-Zero!'
      p @say = 'Ok, call me icicle'
      @result = '🥶'
      @health -= rand(25)
      @horror += rand(25)
      @calm -= rand(25)
      @die = 100 if @die.positive?
      p "Sub-zero froze to death #{@result}"
      #html

    when ''
      @emotion = '🤨'
      p "Press the Enter to be indifferent #{@emotion}"
      @health -= rand(25) if @health >= 26
      @horror += rand(25) if @horror <= 74
      @calm -= rand(25) if @calm >= 26
      @die += rand(25) if @die <= 74

      #html
    else
      @emotion = '🤔'
      p "You entered #{death}, what is it? #{@emotion}"
      p 'Try again!'

    unless
      p 'I\'m tired of waiting for you to tell me the best way to die... Farewell!'
      @result = '💥'
      @health -= rand(25)
      @horror += rand(25)
      @calm -= rand(25)
      @die = 100 if @die.positive?
      p "#{@name} died from waiting to die #{@result}"
      #html
    end
  end

  def stats
    p "Health #{@health}, Horror #{@horror}, Calm, #{@calm}, Die #{@die}, Emotion #{@emotion}"
  end

  def died
    if @health <= 0
      @health = 0
      @emotion = '🤯'
      p "\n\n#{@name} died senselessly!!! He will be reborn #{@emotion}"
    elsif @horror >= 100
      @horror = 100
      @emotion = '💀'
      p "\n\n#{@name} horribly died!!! He will be reborn #{@emotion}"
    elsif @calm <= 0
      @calm = 0
      @emotion = '😀'
      p "\n\n#{@name} didn't worry about death!!! He died happy! He will be reborn #{@emotion}"
    elsif @die >= 100
      @die = 100
      @emotion = '💣'
      p "\n\n#{@name} chose the best way to die. He will be reborn #{@emotion}"
    end
  end
  def meanwhile
    @health -= rand(9) if @health >= 10
    @calm -= rand(9) if @calm >=10
    @horror += rand(9) if @horror < 90
    @die += rand(9) if @die < 90
  end
  end
end
