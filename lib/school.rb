class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)

    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end

    def grade(grade)
     roster[grade]
    end

    def sort
        roster.map do |grade, student|
          student.sort!
        end
      roster
    end

  end

end
