class Student
  attr_accessor :name, :age, :scores

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @scores = []
  end

  def log_score(grade_number)
    @scores << grade_number
  end

  def grade
    average = @scores.sum do |score|
      score.to_f / 2
      end
  end
end