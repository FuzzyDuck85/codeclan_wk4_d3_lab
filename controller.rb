require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('models/student.rb')
also_reload('models/*')


get '/students' do
  @cohort = Student.all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

get '/students/:id' do
  @cohort = Student.find(params[:id])
  erb(:show)
end



post '/students' do
  @cohort = Student.new(params)
  @cohort.save()
  redirect '/students'
end
