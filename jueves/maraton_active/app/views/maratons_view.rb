#Vista
class MaratonsView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  
  def principal
    puts "---------------------------"
    puts "***Bienvenido a Maratón.***"
    puts "---------------------------"
    puts "1) Login"
    puts "2) Signup"
    puts "3) Scores"
    puts "---------------------------"
    puts "Chose one.."
    STDIN.gets()
    #index
  end

  def signup
    puts
    puts
    puts "---------------------------"
    puts "Creando Usuario Nuevo......"
    puts "Ingrese los siguientes datos"
    puts "Nombre: "
    name = gets.chomp
    puts "Email: "
    email = gets.chomp
    puts "Password: "
    password = gets.chomp
    [name, email, password]
  end

  def login
    puts 
    puts
    puts "---------------------------"
    puts "Login"
    puts "---------------------------"
    puts "Email: "
    mail = gets.chomp#STDIN.gets()
    puts "Password: "
    pass = gets.chomp#STDIN.gets()
    [mail, pass]
  end

  def select
    puts
    puts
    puts "-----------------------------------------------------------------------------"
    puts "Selecciona un tema a jugar:"
    puts "1) Infantil"
    puts "2) General"
    puts "3) Capitales"
    gets.chomp
    #STDIN.gets()
    
  end

  def play
    puts
    puts "-----------------------------------------------------------------------------"
    puts "-----------------------------------------------------------------------------"
    puts "Te daremos una pregunta y elije del 1 al 3 segun sea la respuesta correcta."
    puts "Las respuestas estarán ordenadas:"
    puts "1"
    puts "2"
    puts "3"
    puts "Listo?  Arranca el juego!"
    puts "-----------------------------------------------------------------------------"
    puts "-----------------------------------------------------------------------------"
  end

  def preg_resp(questionss, answerss)
    user_answer = []
    res = 0
    for item in 0..9
        puts "PREGUNTA: #{questionss[item]}....."
        answerss[item].each_with_index {|value, index| puts "#{index + 1}.- #{value.option}"}
        print "Elije una:"
        res = gets.chomp
        user_answer << answerss[item][res.to_i - 1]
        puts
    end
    user_answer
  end

  def total_result(good, wrong)
    puts
    puts
    puts "********************************************"
    puts "Acabaste¡¡¡¡¡"
    puts "Puntuacion:"
    puts "#{good} Correctas y #{wrong} Incorrectas."      
    puts "********************************************"
    puts
  end
	
end
