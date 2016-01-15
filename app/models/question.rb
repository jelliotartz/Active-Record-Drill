class Question < ActiveRecord::Base
  has_many :answers

  def check_answer(answer)
    stripped_answer = answer.gsub(/\r/, '')
    self.answers.pluck('text').include?(stripped_answer)
  end
end
