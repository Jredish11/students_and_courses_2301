class Course
  attr_accessor :name, :capacity, :students, :full

  def initialize(name, integer)
    @name = name
    @capacity = integer
    @students = []
    @full = false
  end

  def full?
    if @capacity <= students.count
      true
    else
      false
    end
  end

  def enroll(student)
    @students << student
  end
end


