require 'faker'

5.times do
  Task.create(name: Faker::Lorem.sentence)
end
