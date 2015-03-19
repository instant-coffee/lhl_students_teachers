
def student_assignment
  teachers = Teacher.all
  students = Student.all
  students.each_with_index do |stu, index|
  current_teacher = index % teachers.length 
  stu.teacher = teachers[current_teacher]
  stu.teacher
  stu.save!
  end
end