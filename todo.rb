require_relative 'config/application'

def execute_todo_app
  if ARGV.any?

    case ARGV[0]
      when "list"
        TasksController.list
      when "add"
        TasksController.add ARGV[1..-1].join(' ')
      when "delete"
        TasksController.delete ARGV[1].to_i
      when "complete"
        TasksController.complete ARGV[1].to_i
      when "help"
        TasksController.menu
      else
        TasksController.invalid_command
    end

  else
    TasksController.menu
  end
end


### Program execution starts here ###

execute_todo_app




