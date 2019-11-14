# code here!
class School
  attr_accessor :name

  ROSTER = {}
  
  def initialize(name)
    @name = name
  end
  
  def add_student(student, grade)
        ROSTER[grade] = [] unless ROSTER.has_key?(grade)
        ROSTER[grade] << student
        
  end
  
  def roster
    ROSTER
  end
  
  def grade(grade)
    ROSTER[grade]
  end
  
  def sort
    sorted_roster = Hash[ROSTER.sort_by{|grade, students| grade}]
  end
   
end