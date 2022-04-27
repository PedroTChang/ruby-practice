#1. Array [easy to access, change]
employee1 = ["Suzie", "Pepper", 80000, true]
employee2 = ["April", "Rhodes", 70000, true]
puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year. "
puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

#2. Hash [unordered]
employee1 = { "first_name" => "Suzie", "last_name" => "Pepper", "salary" => 80000, "active" => true }
employee2 = { "first_name" => "April", "last_name" => "Rhodes", "salary" => 70000, "active" => true }
puts "#{employee1["first_name"]} #{employee1["last_name"]} makes #{employee1["salary"]} a year."
puts "#{employee2["first_name"]} #{employee2["last_name"]} makes #{employee2["salary"]} a year."

#3. Hash, but cooler
employee1 = { :first_name => "Suzie", :last_name => "Pepper", :salary => 80000, :active => true }
employee2 = { first_name: "April", last_name: "Rhodes", salary: 70000, active: true }
puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."
#symbols are used because they are more efficient, and uses less memory

#4. Class time; allows you to say what is accessable; long upfront; easier to keep creating new instances; more custom; encapsulation: allows you to control what one can access (no getter can't see it)
class Employee
  attr_reader :first_name, :last_name, :active # getter method
  # mikeys_attr_accessor :first_name, :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  # def first_name same as attr_reader
  #   return @first_name
  # end

  # def last_name
  #   return @last_name
  # end

  # def active
  #   return @active
  # end

  def active=(input_active)
    @active = input_active
  end
end

employee1 = Employee.new({ first_name: "Suzie", last_name: "Pepper", salary: 80000, active: true }) # no idea what each means. same as array except better since array you can't print to find out what each is
employee2 = Employee.new({ first_name: "April", last_name: "Rhodes", salary: 70000, active: true })

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library/ gem?
    puts "Email sent!"
  end
end

# OOP = encapsulation, inheritance
manager = Manager.new({ first_name: "Dakota", last_name: "Stanley", salary: 100000, active: true, employees: [employee1, employee2] })
manager.print_info
manager.send_report
p manager
