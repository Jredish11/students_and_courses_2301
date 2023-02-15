class Course
  attr_accessor :name, :capacity, :students, :full

  def initialize(name, integer)
    @name = name
    @capacity = integer
    @students = []
    @full = false
  end

  def full?
    @full
  end

  def full
    @full = true
  end
end


