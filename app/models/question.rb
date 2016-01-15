class Question < ActiveRecord::Base
  has_many :answers

  def check_answer(answer)
    puts self.answers.first.text.inspect
    puts answer.inspect
    puts self.answers.first.text.inspect == answer.inspect
    self.answers.pluck('text').include?(answer)
  end
end
