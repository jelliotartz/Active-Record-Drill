# Model for creating a question and associated answer
# Question.create(text: "").answers << Answer.create(text: "")


# Theater_Screens_Screenings
Question.create!(text: "What is the relationship between a theater and a screen?").answers << Answer.create!(text: "has_many :screens")
Question.create!(text: "What is the relationship between a theater and a screening?").answers << Answer.create!(text: "has_many :screens")
Question.create!(text: "What is the relationship between a screen and a theater?").answers << Answer.create!(text: "belongs_to :theater")
Question.create!(text: "What is the relationship between a screen and a screening?").answers << Answer.create!(text: "has_many :screenings")
Question.create!(text: "What is the relationship between a screening and a screen?").answers << Answer.create!(text: "belongs_to :screen")







