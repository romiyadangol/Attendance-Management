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

class attendance_manager
  attr_accessor :employees

  def initialize
    @employees = []
  end

end


loop do
  puts "1. Add Employee"
  puts "2. Mark Attendance"
  puts "3. Display Attendance"
  puts "4. Search Attendance"
  puts "5. Delete Attendance"
  puts "6. Exit"

  puts "Enter your choice: "
end