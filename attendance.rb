class Employee
  attr_accessor :id, :name, :department, :position, :attendance

  def initialize(details = {})
    @id = details[:id]
    @name = details[:name]
    @department = details[:department]
    @position = details[:position]
    @attendance = []
  end
end

class Attendance_manager
  attr_accessor :employees

  def initialize
    @employees = []
  end

  def add_employee(employee)
    if @employees.include?(employee)
      puts "Employee already exist!!!"
    else
      @employees << employee
      puts "Employee Added Successfully: #{employee.name} (ID: #{employee.id}) "
    end
  end

  def mark_attendance(employee, date, status)
    if @employees.include?(employee)
      employee.attendance << {date: date, status: status}
      puts "Attendance marked successfully for #{employee.name} (ID: #{employee.id}) on (date: #{date})"
    else
      puts "Employee Not Found..."
    end
  end

  def display_attendance(employee)
    if @employees.include?(employee)
      puts "Attendance for #{employee.name} (ID: #{employee.id})"
      employee.attendance.each do |attendance| 
      puts "on date: #{attendance[:date]} is #{attendance[:status]}"
      end
    else
      puts "Employee Not found!!!"
    end
  end

  def search_attendance

  end

  def delete_attendance

  end
end

##instances
attendance_manager = Attendance_manager.new


loop do
  puts "1. Add Employee"
  puts "2. Mark Attendance"
  puts "3. Display Attendance"
  puts "4. Search Attendance"
  puts "5. Delete Attendance"
  puts "6. Exit"

  puts "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter employee ID: "
    id = gets.chomp
    puts "Enter employee name: "
    name = gets.chomp
    puts "Enter employee department: "
    department = gets.chomp
    puts "Enter employee position: "
    position = gets.chomp
    employee= Employee.new(id: id, name: name, department:department, position: position )
    attendance_manager.add_employee(employee)

  when 2
    puts "Enter employee ID: "
    id = gets.chomp
    employee = attendance_manager.employees.find {|employee| 
      employee.id == id
    }
    if employee
      puts "Enter date: "
      date = gets.chomp
      puts "Enter status: "
      status = gets.chomp
      attendance_manager.mark_attendance(employee, date, status)
    else
      puts "Employee not found..."
    end
  end


end