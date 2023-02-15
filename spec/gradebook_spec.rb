require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe GradeBook do
  it 'exits' do
    grade_book = GradeBook.new("Mr. Boatwright")

    expect(grade_book.instructor).to eq("Mr. Boatwright")
  end

  it 'has courses' do
    grade_book = GradeBook.new("Mr. Boatwright")

    expect(grade_book.courses).to eq([])
  end

  it 'adds courses' do
    grade_book = GradeBook.new("Mr. Boatwright")
    course_1 = Course.new("Calculus", 2)
    
    grade_book.add_course(course_1)

    expect(grade_book.courses).to eq([course_1])
  end

  it 'can list all students in its courses' do
    grade_book = GradeBook.new("Mr. Boatwright")
    course_1 = Course.new("Calculus", 2)
    
    grade_book.add_course(course_1)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    
    course_1.enroll(student1)
    course_1.enroll(student2)

    expect(grade_book.list_all_students).to eq([student1, student2])
  end

  it 'can return a list of students whose grades are below threshold' do
    grade_book = GradeBook.new("Mr. Boatwright")
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    
    student1.log_score(78)

    expect(student1.scores).to eq([78])
    
    student1.student_below(80)

    expect(student1.student_below(score)).to eq([student1])




  end
end