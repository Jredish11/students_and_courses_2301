require './lib/student'

RSpec.describe Student do
  it 'exits' do
    student = Student.new({name: "Morgan", age: 21}) 

    expect(student).to be_an_instance_of(Student)
  end

  it 'has a name' do
    student = Student.new({name: "Morgan", age: 21}) 

    expect(student.name).to eq("Morgan")
  end
end