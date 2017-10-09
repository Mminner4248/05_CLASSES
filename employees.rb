class Employee
    attr_accessor :name
    attr_accessor :jobTitle
    attr_accessor :startDate

    def initialize(nm, jt, sd)
        @name = nm
        @jobTitle = jt
        @startDate = sd
    end

end

class Company

    attr_accessor :employees
    
    def initialize(company_name)
        @company_name = company_name
        @employees = Array.new
    end

    #Returns the name of the company
    def company_name
        @company_name
    end

end


farmbureau = Company.new("Farm Bureau")

steve = Employee.new("Steve", "Manager", "03-1-1990")
ryan = Employee.new("Ryan", "Assistant-Manager", "09-23-2015")
charisse = Employee.new("Charisse", "Assistant to the Assistant-Manager", "08-18-2016")

farmbureau.employees.push(steve)
farmbureau.employees.push(ryan)
farmbureau.employees.push(charisse)

puts farmbureau.company_name

farmbureau.employees.each do |x|
    puts  x.name, x.jobTitle, x.startDate
end