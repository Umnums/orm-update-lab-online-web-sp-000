require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade, :id

  def initialize(name, grade, id = nil)
    @id = id
    @grade = grade
    @name = name
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE students
    SQL
    DB[:conn].execute(sql)

  end

  def update
    sql = <<-SQL
    UPDATE students SET
    name = ?, grade = ?, where id = ?
    SQL
    DB[:conn].execute(sql, self.name, self.grade, self.id)
  end


end
