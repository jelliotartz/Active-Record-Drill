# require 'faker'

# Model for creating a question and associated answer
# Question.create(text: "").answers << Answer.create(text: "")

# Theater_Screens_Screenings
Question.create!(text: "What is the relationship between a theater and a screen?").answers << Answer.create!(text: "has_many :screens")
Question.create!(text: "What is the relationship between a theater and a screening?").answers << Answer.create!(text: "has_many :screens")
Question.create!(text: "What is the relationship between a screen and a theater?").answers << Answer.create!(text: "belongs_to :theater")
Question.create!(text: "What is the relationship between a screen and a screening?").answers << Answer.create!(text: "has_many :screenings")
Question.create!(text: "What is the relationship between a screening and a screen?").answers << Answer.create!(text: "belongs_to :screen")


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


##### Questions and Answers for Hotels Challenge

Question.create!(text: "What is the relationship between Booking and
guests?").answers << Answer.create!(text: "belongs_to :guest, class_name:
'User'")

Question.create!(text: "What is the relationship between Booking and
rooms?").answers << Answer.create!(text: "belongs_to :rooms")

Question.create!(text: "What is the relationship between Booking and
hotels?").answers << Answer.create!(text: "has_one :hotel, through: :room")

Question.create!(text: "What is the relationship between Hotel and
rooms?").answers << Answer.create!(text: "has_many :rooms")

Question.create!(text: "What is the relationship between Hotel and
bookings?").answers << Answer.create!(text: "has_many :bookings, through:
:rooms")

Question.create!(text: "What is the relationship between Hotel and
booked_guests?").answers << Answer.create!(text: "has_many :booked_guests,
through: :bookings, source: :guest")

Question.create!(text: "What is the relationship between Hotel and
booked_guests?").answers << Answer.create!(text: "has_many :booked_guests,
through: :bookings, source: :guest")

Question.create!(text: "What is the relationship between Room and
hotel?").answers << Answer.create!(text: "belongs_to :hotel")

Question.create!(text: "What is the relationship between Room and
bookings?").answers << Answer.create!(text: "has_many :bookings")

Question.create!(text: "What is the relationship between User and
bookings?").answers << Answer.create!(text: "has_many :bookings, foreign_key:
:guest_id")

Question.create!(text: "What is the relationship between User and
booked_rooms?").answers << Answer.create!(text: "has_many :booked_rooms,
through: :bookings, source: :room")

Question.create!(text: "What is the relationship between User and
booked_hotels?").answers << Answer.create!(text: "has_many :booked_hotels,
through: :bookings, source: :hotel")




