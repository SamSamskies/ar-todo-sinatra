class Task < ActiveRecord::Base
  validates_presence_of :name, message: "Task can't be blank."
  validates_uniqueness_of :name, message: 'Task is already on the list.'
end
