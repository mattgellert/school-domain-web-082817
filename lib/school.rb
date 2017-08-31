require 'pry'
class School
  attr_accessor :roster

  def initialize(school, roster = {})
    @school = school
    @roster = roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #binding.pry
    self.roster = self.roster.sort_by {|grade, students| grade}.to_h.map {|grade, students| [grade, students.sort]}.to_h
  end

end
