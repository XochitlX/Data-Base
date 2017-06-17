class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  validates :age, :numericality => { :greater_than => 18 }
  validates :email, :uniqueness => true,
                    :format => { :with => /[A-Z a-z 0-9]{1,}@+[A-Z a-z 0-9]+\.[A-Z a-z 0-9]{2,}/ }
  validates :phone, :format => { :with => /\d/},
                    :length => { :minimum => 10 }

  def name
    "#{first_name} #{last_name}" 
  end

  def age
    Date.today.year - birthday.year
  end
end

