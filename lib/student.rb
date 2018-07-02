class Student
  attr_accessor :name, :grade


def initialize(name, grade, id=nil)
  @name = name
  @grade = grade
end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade NUMBER
      )
      SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DELETE students
      SQL
    DB[:conn].execute(sql)






end
