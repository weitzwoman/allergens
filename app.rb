require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/allergies-form') do
  @allergen_input = (params.fetch("allergyScore")).to_i
  @allergen_output = @allergen_input.allergen().join(", ")
  erb(:allergies_output)
end
