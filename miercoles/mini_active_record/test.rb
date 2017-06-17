require_relative 'app'

# def assert(truthy)
#   raise "Tests failed" unless truthy
# end

# chef = Chef.find(1)

# # Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# assert chef[:first_name] == 'Ferran'
# assert chef[:last_name] == 'Adria'


#PRUEBAS PRINCIPALES
# p Chef.all
# p Meal.all

# p Chef.create({first_name: 'xochitl_l', last_name: 'tufiño', email: 'xoch@gmail', phone: '913.278.6032', birthday: '1990-01-01'})
# puts
# puts
# p Meal.create({name: 'Enchiladas', chef_id: 10})

# puts Chef.where('first_name = ?', 'xochitl')
# puts Meal.where('name = ?', 'Enchiladas')

p Chef.find(1)
puts
puts
puts
p Meal.find(1)



puts "finished"
