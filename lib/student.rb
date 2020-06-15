require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade, :id
  
  def initialize(name, grade, id = nil)
    @id = id
    @grade = grade
    @name = name
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
