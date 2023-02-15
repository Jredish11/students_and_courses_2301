require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exits' do
    course = Course.new("Calculus", 2)

    expect(course).to be_an_instance_of(Course)
  end

  it 'subject has a name' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq("Calculus")
  end

  it 'has a number for capacity' do
    course = Course.new("Calculus", 2)

    expect(course.capacity).to eq(2)
  end

  it 'has list of students' do
    course = Course.new("Calculus", 2)

    expect(course.students).to eq([])
  end

  it 'asks if course if full?' do
    course = Course.new("Calculus", 2)

    expect(course.full?).to eq(false)
  end

  it "enrolls students, checks if course is full" do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student1)
    course.enroll(student2)

    expect(course.students).to eq([student1, student2])
    expect(course.full?).to eq(true)
  end


end