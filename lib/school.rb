# code here!
require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
  @name
  end

  def roster
  @roster
  end

  def add_student(student, grade)
    if roster.include?(grade)
    roster[grade] << student
 else
   roster[grade] = []
   roster[grade] << student

  end
  end

  def grade(grade)
    if roster.include?(grade)
     roster[grade]
    end
  end

  def sort
    sorted_roster = {}
    roster.collect do |grade, student_name|
      sorted_roster[grade] = student_name.sort
  end
  sorted_roster
  end
end


# def sort
#   sorted = {}
#   roster.map do |grade, students|
#     sorted[grade] = students.sort
#   end
#   sorted
# end
