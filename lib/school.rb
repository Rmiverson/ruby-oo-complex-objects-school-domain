# code here!

class School
   attr_accessor :roster

   @@all = []

   def initialize(name)
      @name = name
      @roster = {}
      @@all << self
   end

   def self.all
      @@all
   end

   def add_student(student_name, student_grade)
      if !@roster[student_grade]
         @roster[student_grade] = []
      end
      @roster[student_grade] << student_name
   end

   def grade(student_grade)
      @roster[student_grade]
   end

   def sort
      ans = {}
      @roster.map do|grades, classes|
         ans[grades] ||= classes.sort
      end
      ans
   end
end
