require 'Unirest'

response = Unirest.post('http://localhost:3000/todolist')


puts JSON.pretty_generate(response.body)