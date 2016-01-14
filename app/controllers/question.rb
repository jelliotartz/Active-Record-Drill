get '/questions' do
  @questions = Question.all
  erb :index
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'questions/show'
end

post '/questions/:id' do
  @question = Question.find(params[:id])
  @answer = params[:answer]
  @correct = @question.check_answer(@answer)
  erb :'questions/show'
end
