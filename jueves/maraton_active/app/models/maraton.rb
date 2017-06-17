#Modelo

# class Maraton < ActiveRecord::Base


# end

class User < ActiveRecord::Base
  has_many :games #plurar
  has_many :decks, through: :games
end

class Game < ActiveRecord::Base
  belongs_to :user #singular
  belongs_to :deck
  has_many :statistics
  has_many :questions, through: :statistics
  has_many :answers, through: :statistics
end

class Deck < ActiveRecord::Base
  has_many :games
  has_many :users, through: :games
  has_many :questions
end

class Question < ActiveRecord::Base
  belongs_to :deck 
  has_many :answers
  has_many :statistics
end

class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :statistics
end

class Statistic < ActiveRecord::Base
  belongs_to :game
  belongs_to :answer
  belongs_to :question
end
