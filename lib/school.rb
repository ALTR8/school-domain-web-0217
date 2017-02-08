class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
#to pass tests
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(class_grade)
    @roster[class_grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
