require('Sinatra')
require('Sinatra/contrib/all')
require('pry')

require_relative('models/student.rb')
also_reload('models/*')
