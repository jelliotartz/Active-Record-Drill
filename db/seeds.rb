# require 'faker'

##### Questions and Answers for T-Shirt Challenge

Question.create!(text: "What is the relationship between Users and
purchases?").answers << Answer.create!(text: "has_many :purchases,
foreign_key: :purchaser_id")

Question.create!(text: "What is the relationship between Users and
purchased_shirts?").answers << Answer.create!(text: "has_many
:purchased_shirts, through: purchases, :source => :shirt")

Question.create!(text: "What is the relationship between Users and
designed_shirts?").answers << Answer.create!(text: "has_many :designed_shirts,
class_name: 'Shirt', foreign_key: :designer_id")

Question.create!(text: "What is the relationship between Users and
sales?").answers << Answer.create!(text: "has_many :sales, through:
:designed_shirts")

Question.create!(text: "What is the relationship between Users and
clients?").answers << Answer.create!(text: "has_many :clients, through:
:sales, :source => :designer")

Question.create!(text: "What is the relationship between Users and
supported_designers?").answers << Answer.create!(text: "has_many
:supported_designers, through: :purchased_shirts, :source => :designer")

Question.create!(text: "What is the relationship between Purchases and
shirts?").answers << Answer.create!(text: "belongs_to :shirt")

Question.create!(text: "What is the relationship between Purchases and
purchaser?").answers << Answer.create!(text: "belongs_to :purchaser,
class_name: 'User'")

Question.create!(text: "What is the relationship between Shirt and
purchases?").answers << Answer.create!(text: "has_many :purchases")

Question.create!(text: "What is the relationship between Shirt and
purchaser?").answers << Answer.create!(text: "has_many :purchasers, through:
:purchases")

Question.create!(text: "What is the relationship between Shirt and
designer?").answers << Answer.create!(text: "belongs_to :designer, class_name:
'User'")

Question.create!(text: "What is the relationship between Shirt and
sales?").answers << Answer.create!(text: "has_many :sales, class_name:
'Purchase'")




