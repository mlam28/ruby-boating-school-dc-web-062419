class Student
    attr_reader :first_name, :tests

    @@all = []
    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
        @tests = []
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
      new_test = BoatingTest.new(self, test_name, test_status, instructor)
      @tests << new_test
    end

    def self.find_student(first_name)
        @@all.select do |student|
            student.first_name == first_name
        end
    end

    def grade_percentage
        number_of_tests = @tests.length
        number_of_passes = @tests.count do |test|
            test.test_status == "pass"
            end
       grade = number_of_passes.to_f/number_of_tests
       grade
    end
end
