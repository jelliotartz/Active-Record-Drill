get '/questions' do
  @questions = Question.all
  if session[:guesses]
    correct = session[:guesses].select { |guess| guess[1] }
    @completed = correct.map { |guess| guess[0] }.uniq
  end
  erb :index
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  if session[:guesses]
    @last_guess = session[:guesses].select { |guess| guess[0] == @question.id }.last
  end
  erb :'questions/show'
end

post '/questions/:id/guess' do
  question = Question.find(params[:id])
  answer = params[:answer]
  correct = question.check_answer(answer)
  session[:guesses] ||= []
  session[:guesses] += [[question.id, correct, answer]]
  redirect "/questions/#{params[:id]}"
end

get '/clear_session' do
  session.clear
  redirect '/questions'
end
