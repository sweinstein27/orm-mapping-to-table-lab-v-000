class Student
  attr_accessor :name, :grade


def initialize(name, grade, id=nil)
  @name = name
  @grade = grade
end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def self.create_table
  end



end
