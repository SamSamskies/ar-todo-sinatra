class TasksView
  def self.display_menu
    puts
    puts "*" * 100
    puts "Usage:"
    puts "ruby todo.rb list \t\t\t\t # List all tasks"
    puts "ruby todo.rb add TASK \t\t\t\t # Add task to do e.g. ruby todo.rb Buy groceries"
    puts "ruby todo.rb delete NUM_OF_TASK_TO_DELETE \t # Delete a task e.g. ruby todo.rb delete 1"
    puts "ruby todo.rb complete NUM_OF_TASK_TO_DELETE \t # Complete a task e.g. ruby todo.rb complete 1"
    puts
  end

  def self.display_invalid_command
    puts "Invalid command :/"
  end

  def self.display_list(tasks)
    if tasks.empty?
      puts
      puts "Woohoo no tasks to complete yet!"
      puts
    else
      tasks.each_with_index do |task, i|
        completed = task.completed ? 'x' : ' '
        puts "#{i+1}.".ljust(4) + "[#{completed}] #{task.name}"
      end
    end
  end

  def self.display_notice(notice)
    puts notice
  end
end
