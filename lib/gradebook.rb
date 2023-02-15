class GradeBook
  attr_reader :instructor, :courses
  
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    lists = {}
    lists = @courses.map do |course|
      course.students
    end.flatten
  end
end
