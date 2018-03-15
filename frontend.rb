require 'Unirest'

response = Unirest.patch('http://localhost:3000/todolist/5')


puts JSON.pretty_generate(response.body)