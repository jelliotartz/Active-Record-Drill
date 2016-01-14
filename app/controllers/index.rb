get '/' do
  @questions = Question.all
  erb :index
end
