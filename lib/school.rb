class School

attr_reader :school_name, :roster

def initialize(school_name)
    @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)

        (@roster[grade] ||= []) << name
        # if @roster[grade]
        #      @roster[grade] << name
        # else @roster[grade] = [name]
        # end      
    end

    def grade(num)
        @roster[num]
    end

    def sort 
        @roster.each do |key,value|
            value.sort!
        end
    end

end

school = School.new("Bayside High School")
# school.add_student("Ellaine", 10)
# puts school.roster