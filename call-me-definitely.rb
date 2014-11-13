def run
  line_up_students
  quantify_neglection
  line_up_neglected_students
  pick_one
end

def line_up_students
  @allstudents = []
  File.open("students.csv").each_line do |line|
    @allstudents << line.split(",")
  end
end

def quantify_neglection
  student_numbers = @allstudents.map {|a| a[1]}
  @neglected_number = student_numbers.min
end

def line_up_neglected_students
  @neglected_students = @allstudents.select {|a| a[1] == @neglected_number}
end

def pick_one
  @the_chosen_one = @neglected_students.sample
  print @the_chosen_one[0]
  increment
end

def increment
  content = IO.readlines("students.csv").map do |line|
    if @the_chosen_one.join(",") == line
      incremented_line = @the_chosen_one[0] + "," + @the_chosen_one[1].to_i.next.to_s
      incremented_line
    else
      line
    end
  end
  File.open("students.csv", "w") do |file|
    file.puts content
  end
end

run
