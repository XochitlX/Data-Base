#Vista
class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  
	def index(array)
    lista = []
    array.each_with_index do |objeto, i|
      status = objeto.status ? 'completed' : 'incomplete'
      puts "#{objeto.id}.- #{status}\t#{objeto.task} "
    end
	end

  def create
    puts "Tarea agregada..."
  end

  def delete
    puts "Wich task do you want to delete"
    STDIN.gets()
  end

  def completed
    puts "Wich task do you want to complete"
    STDIN.gets()
  end

  def update
    puts "Completado...... "
  end

	def error
    puts "Error***"
	end
end
