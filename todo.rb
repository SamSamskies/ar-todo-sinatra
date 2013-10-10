require_relative 'config/application'
require 'sinatra'
require 'rack-flash'

set :root, File.dirname(__FILE__)
set :views, Proc.new { File.join(root, "app/views") }

enable :sessions
use Rack::Flash

after do
  ActiveRecord::Base.connection.close
end


get '/' do
  @tasks = Task.all
  erb :index
end

get '/add' do
  erb :add
end

post '/add' do
  task = Task.create(name: params[:name])
    if task.valid?
      flash[:notice] = "Appended '#{params[:name]}' to your TODO list..."
    else
      flash[:notice] = "Error: #{task.errors.messages[:name].first}"
    end
  redirect '/'
end

# delete and complete are a bit more difficult, so I'll save those for another day. Feel free to attempt those as a challenge. http://net.tutsplus.com/tutorials/ruby/singing-with-sinatra-the-recall-app-2/ <= Check out that tutorial for info on how to implement the delete and complete actions.




