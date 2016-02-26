class Answer < ActiveRecord::Base
  belongs_to :question

  def self.normalize_text(text)
  	text.split("\n").map(&:strip).select { |line| line.length > 0 }.join("\n")
  end
end
