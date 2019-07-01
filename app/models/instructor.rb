require "pry"
class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
       select_test = BoatingTest.all.select do |test|
            test.student == student && test_name == test.test_name
        end
        select_test[0].test_status = "pass"
        select_test
    end

    def fail_student(student, testname)
        test_array = []
        student.tests.each do |test|
                test_array << test.test_name
             end
        if test_array.include?(testname) == false
                 student.add_boating_test(testname, "fail", self)
        else
            student.tests.each do |test|
                if test.test_name == testname
                    test.test_status == "fail"
                end
            end
        end
    end
end
