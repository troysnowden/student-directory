students = []

def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end

def print_names(names)
  names.each do |name|
    puts "#{name[:name]} - #{name[:cohort]} cohort"
  end
end

def print_footer(names)
  puts "Overall, there are #{names.count} students"
end

def input_students(students)
  puts "Enter a name to add to the students, if you don't want to add anymore just hit return"
  name = gets.chomp
  while !name.empty?
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
end

input_students(students)
print_header
print_names(students)
print_footer(students)