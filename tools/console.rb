require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# lisa = Student.new("Lisa")
# puts lisa
# puts Student.all

# michelle = Student.new("Michelle")

# trevor = Instructor.new("Trevor")
# lisa.add_boating_test("basics", "pass", trevor)
# lisa.add_boating_test("level one", "pass", trevor)
# lisa.add_boating_test("level two", "fail", trevor)
# puts lisa.grade_percentage

# puts "Does it change test status to pass?"
# puts trevor.pass_student(lisa, "level two")

# trevor.fail_student(michelle, "basics")
# trevor.fail_student(lisa, "general")
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

puff.fail_student(patrick, "Don't Crash 101")


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

