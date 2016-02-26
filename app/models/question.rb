

class Question < ActiveRecord::Base
  has_many :answers

  def check_answer(answer)
		self.answers.pluck(:text).map { |t| Answer.normalize_text(t) }.include?(Answer.normalize_text(answer))
  end
end
