u = User.create!(name: "john", email:"john@dbc.com", password:"1", password_confirmation: "1")

poll = Poll.create!(title: "Favorite Sandwhiches", creator: u, description:"who doesn't love Sandwhiches? (You mean Hoagies right?)") 

panini = Question.create!(content: "What is the best type of panini?")
veggie = Question.create!(content: "What is the best type of vegetarian sanwhich?")

# poll.questions << pannini, veggie
poll.questions = [panini, veggie]

panini.answers = [
  Answer.create!(content: "tomato, mozzarella, and basil"),
  Answer.create!(content: "prosciutto, arugula"),
  Answer.create!(content: "chicken pesto")
]

veggie.answers  = [
  Answer.create!(content: "portabello mushroom"),
  Answer.create!(content: "falafel"),
  Answer.create!(content: "veggie burger")
]

40.times { Response.create!(answer_id: rand(1..6), respondent: u) }
