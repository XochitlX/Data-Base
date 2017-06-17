#Controlador
class MaratonsController
  def initialize(args)
    @args = args
    @view = MaratonsView.new
    @option = @view.principal
    options
  end

  def options
    @option = @option.to_i
    if @option == 1
      login
    elsif @option == 2
      signup
    elsif @option == 3
      scores
    end
  end

  def scores
     
  end

  def signup
    new_user = @view.signup
    User.create(name: new_user[0], email: new_user[1], password: new_user[2])
  end

  def login
    data = @view.login
    if User.where(email: data[0], password: data[1]).exists? == true
      @user = User.find_by(email: data[0], password: data[1])
      play
    end
  end

  def play
    select = @view.select
    @view.play
    if select == "1"
      @test = Question.where deck_id: 1
      @deck = 1
    elsif select == "2"
      @test = Question.where deck_id: 2
      @deck = 2
    elsif select == "3"
      @test = Question.where deck_id: 3
      @deck = 3
    end
    play_game

    quest = []
    index = []
    answ = []
   
    @test.each do |objeto|
      ans = []
      quest << objeto.text
      an = Answer.where(question_id: objeto.id)
      an.each {|item| ans << item}
      #p ans
      answ << ans
    end
    
    #Revolviendo..
    answers = []
    answ.each do |value|
      answers << value.sort_by{rand}
    end
    @result = @view.preg_resp(quest, answers)
    total_result
  end
  
  def total_result
    count_good = 0
    count_wrong = 0
    @result.each do |objeto|
      edo = objeto.status
      if edo == true
        count_good += 1
      elsif edo == false
        count_wrong += 1
      end
    end
    @view.total_result(count_good, count_wrong)

    method_name 
  end
  
  def play_game
    u_id = @user.id
    d_id = @deck
    @game = Game.create(user_id: u_id, deck_id: d_id)
    #@game = Game.find#find_by(user_id: u_id, deck_id: d_id)
  end

  def method_name
    g_id = @game.id
    
    for item in 0..9
      a = @result[item].question_id
      b = @result[item].id
      c = @result[item].status
      Statistic.create(game_id: g_id, question_id: a, answer_id: b, score: c) #88
    end
  end

  
end





