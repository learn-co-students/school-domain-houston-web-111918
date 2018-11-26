class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    roster.each do |k, v|
      v.sort!
    end
    roster
  end
  
end

# school = School.new('Flatiron')
# school.add_student('Austin Puckett', 11)
# school.add_student('Jakob Bellamy', 11)
# school.add_student('Francisco Banda', 9)
# school.add_student('Claire Nguyen', 10)
# school.sort
# school.roster
# school.grade(11)