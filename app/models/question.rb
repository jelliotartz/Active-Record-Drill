class Question < ActiveRecord::Base
  has_many :answers

  def check_answer(answer)
    self.answers.pluck('text').include?(answer)
  end
end
