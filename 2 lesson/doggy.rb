class Doggy

  def initialize(name)
    puts 'Hello, name your pet'
    name = gets.chomp
    @name = name
    @health = 70
    @mood = 70
    @hunger = 30
    @tiredness = 30
    @asleep = 70
    @defend = false
    puts "#{@name} начал жить с нами :)"
    user_interaction
  end

  def feed
    puts "Вы кормите #{@name}a"
    @hunger = 0
    @health += 10
    @mood += 10
    @asleep -= 10
    p "#{@name} понравилось :)"
    user_interaction
  end

  def walk
    puts "Вы гуляете с #{@name}"
    @tiredness += 30
    @mood += 20
    @asleep -= 15
    if @tiredness > 90
      puts "#{@name} wants to sleep"
    end
    user_interaction
  end

  def go_to_sleep
    puts "#{@name} пошел спать"
    @hunger += 50
    @health += 25
    @asleep = 100
    @tiredness = 0
    user_interaction
  end

  def play
    puts "Весело играть с #{@name}!"
    @mood += 30
    @tiredness += 20
    @health += 5
    @hunger += 20
    user_interaction
  end

  def bathe
    puts "Нужно привести #{@name} в порядок"
    @health += 10
    @hunger += 5
    @mood +=5
    user_interaction
  end

  def scratch
    puts "#{@name} любит когда его почесывают за ухом"
    @mood += 20
    user_interaction
  end

  def see_some_stranger
    puts "#{@name} рычит и лает"
    @defend = true
    @hunger += 5
    @asleep += 3
    if @hunger >= 70 && @asleep <= 20
      @health -= 5
    end
    user_interaction
  end

  def help
    puts 'Собачку можно покормить - feed'
    puts 'С ней можно поиграть - play'
    puts 'Ее можно уложить спать - go_to_sleep'
    puts 'С ней можно погулять - walk'
    puts 'Собачку можно искупать - bathe'
    puts 'Ее можно почесать за ухом - scratch'
    puts 'Она может защитить - see_some_stranger'
    puts 'За ней можно понаблюдать - follow'
    puts 'Можно проверить ее уровень показателей - status'
    user_interaction
  end

  def status
    puts "health = #{@health}"
    puts "mood = #{@mood}"
    puts "hunger = #{@hunger}"
    puts "tiredness = #{@tiredness}"
    puts "asleep = #{@asleep}"
    puts "defend = #{@defend}"
    user_interaction
  end

  def follow
    r = rand(1..3)
    case r
      when 1
        p "#{@name} бегал по комнате, нашел мячик и схватил его :)"
        @mood += 10
        @tiredness += 10
      when 2
        p "#{@name} гулял по улице, встретил другую собаку и они облаяли друг друга"
        @mood -= 5
        @tiredness += 5
      when 3
        p "Хозяина не было целый день дома. Когда он пришел, #{@name} был очень рад и вилял хвостом"
        @mood += 35
        @hunger += 35
    end
    user_interaction
  end

  private

  def user_interaction
    time_passes
    puts "Выберите тип взаимодействия с вашим питомцем:"
    action = gets.chomp
    action_router(action)
  end

  def action_router(action)
    send(action)
  rescue NoMethodError
    puts 'Неправильная команда!'
    user_interaction
  end

  def time_passes
    @hunger += 5
    @asleep -= 5
    if @hunger > 80 && @health < 20
      p "#{@name} сбегает с дома, потому что вы плохо с ним обращались("
    end
  end
end

doggy = Doggy.new('name')
