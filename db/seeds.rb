# require 'faker'

# Model for creating a question and associated answer
# Question.create(text: "").answers << Answer.create(text: "")


def start_text_for(class_name, associations = nil)
  return "class #{class_name} < ActiveRecord::Base\n  #{associations}\nend"
end

# Theater_Screens_Screenings
Question.create!(text: "What is the relationship between a theater and a screen?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "if it's not has_one, it might be has...",
                 start_text: start_text_for("Theater"))
                 .answers.create!(text: start_text_for("Theater", "has_many :screens"))

Question.create!(text: "What is the relationship between a theater and a screening?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "has_many: :through is a thing",
                 start_text: start_text_for("Theater", "has_many :screens\n  "))
                 .answers.create!(text: start_text_for("Theater", "has_many :screens\n  has_many :screenings, through: :screens"))

Question.create!(text: "What is the relationship between a screen and a theater?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "It's belongs_to, ya rube",
                 start_text: start_text_for("Screen"))
                 .answers.create!(text: start_text_for("Screen", "belongs_to :theater"))

Question.create!(text: "What is the relationship between a screen and a screening?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "if it's not has_one, it might be has_...",
                 start_text: start_text_for("Screen", "belongs_to :theater\n  "))
                 .answers.create!(text: start_text_for("screen", "belongs_to :theater\n  has_many :screenings"))

Question.create!(text: "What is the relationship between a screening and a screen?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "It's belongs_to, ya rube",
                 start_text: start_text_for("Screening"))
                 .answers.create!(text: start_text_for("Screening", "belongs_to :screen"))

Question.create!(text: "What is the relationship between a screening and a theater?",
                 schema_img_filename: "theaters-screens-screenings-schema.png",
                 hint: "It's belongs_to, ya rube",
                 start_text: start_text_for("Screening", "belongs_to :screen\n  "))
                 .answers.create!(text: start_text_for("Screening", "belongs_to :screen\n  belongs_to :theater, through: :screen"))

##### Questions and Answers for T-Shirt Challenge

Question.create!(text: "What is the relationship between a Purchase and a Shirt?",
                schema_img_filename: "shirts-schema.png",
                start_text: start_text_for("Purchase"))
                .answers.create!(text: start_text_for("Purchase", "belongs_to :shirt"))

# Question.create!(text: "What is the relationship between Users and
# purchases?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :purchases,
# foreign_key: :purchaser_id")

# Question.create!(text: "What is the relationship between Users and
# purchased_shirts?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many
# :purchased_shirts, through: purchases, :source => :shirt")

# Question.create!(text: "What is the relationship between Users and
# designed_shirts?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :designed_shirts,
# class_name: 'Shirt', foreign_key: :designer_id")

# Question.create!(text: "What is the relationship between Users and
# sales?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :sales, through:
# :designed_shirts")

# Question.create!(text: "What is the relationship between Users and
# clients?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :clients, through:
# :sales, :source => :designer")

# Question.create!(text: "What is the relationship between Users and
# supported_designers?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many
# :supported_designers, through: :purchased_shirts, :source => :designer")

# Question.create!(text: "What is the relationship between Purchases and
# shirts?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "belongs_to :shirt")

# Question.create!(text: "What is the relationship between Purchases and
# purchaser?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "belongs_to :purchaser,
# class_name: 'User'")

# Question.create!(text: "What is the relationship between Shirt and
# purchases?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :purchases")

# Question.create!(text: "What is the relationship between Shirt and
# purchaser?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :purchasers, through:
# :purchases")

# Question.create!(text: "What is the relationship between Shirt and
# designer?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "belongs_to :designer, class_name:
# 'User'")

# Question.create!(text: "What is the relationship between Shirt and
# sales?", schema_img_filename: "shirts-schema.png").answers << Answer.create!(text: "has_many :sales, class_name:
# 'Purchase'")

# # Users_FacebookAccounts

# Question.create!(text: "What is the relationship between a user and a Facebook account?", schema_img_filename: "users-facebook-accounts-schema.png")
# .answers << Answer.create!(text: "has_one :Facebook_account")

# Question.create!(text: "What is the relationship between a Facebook account and a user?", schema_img_filename: "users-facebook-accounts-schema.png")
# .answers << Answer.create!(text: "belongs_to :user")

# # Users_Orders

# Question.create!(text: "What is the relationship between a user and an order?", schema_img_filename: "users-orders-schema.png")
# .answers << Answer.create!(text: "has_many :orders")

# Question.create!(text: "What is the relationship between an order account and a user?", schema_img_filename: "users-orders-schema.png")
# .answers << Answer.create!(text: "belongs_to :user")

# # AddressBook

# Question.create!(text: "What is the relationship between a group and a contanct?", schema_img_filename: "users-orders-schema.png")
# .answers << Answer.create!(text: "has_many :contacts")

# Question.create!(text: "What is the relationship between a contact and a group?", schema_img_filename: "users-orders-schema.png")
# .answers << Answer.create!(text: "has_many :groups")

# # Authors_Books_Publishers

# Question.create!(text: "What is the relationship between an author and a book?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "has_many :books")

# Question.create!(text: "What is the relationship between a book and an author?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "has_many :authors")

# Question.create!(text: "What is the relationship between a book and a publisher?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "belongs_to :publisher")

# Question.create!(text: "What is the relationship between a publisher and a book?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "has_many :books")

# Question.create!(text: "What is the relationship between an author and a publisher?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "has_many :publishers, through: :books")

# Question.create!(text: "What is the relationship between a publisher and an author?", schema_img_filename: "authors-books-publishers-schema.png")
# .answers << Answer.create!(text: "has_many :authors, through: :books")

# ##### Questions and Answers for Hotels Challenge

# Question.create!(text: "What is the relationship between Booking and
# guests?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "belongs_to :guest, class_name:
# 'User'")

# Question.create!(text: "What is the relationship between Booking and
# rooms?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "belongs_to :rooms")

# Question.create!(text: "What is the relationship between Booking and
# hotels?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_one :hotel, through: :room")

# Question.create!(text: "What is the relationship between Hotel and
# rooms?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :rooms")

# Question.create!(text: "What is the relationship between Hotel and
# bookings?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :bookings, through:
# :rooms")

# Question.create!(text: "What is the relationship between Hotel and
# booked_guests?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :booked_guests,
# through: :bookings, source: :guest")

# Question.create!(text: "What is the relationship between Hotel and
# booked_guests?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :booked_guests,
# through: :bookings, source: :guest")

# Question.create!(text: "What is the relationship between Room and
# hotel?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "belongs_to :hotel")

# Question.create!(text: "What is the relationship between Room and
# bookings?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :bookings")

# Question.create!(text: "What is the relationship between User and
# bookings?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :bookings, foreign_key:
# :guest_id")

# Question.create!(text: "What is the relationship between User and
# booked_rooms?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :booked_rooms,
# through: :bookings, source: :room")

# Question.create!(text: "What is the relationship between User and
# booked_hotels?", schema_img_filename: "hotels-schema.png").answers << Answer.create!(text: "has_many :booked_hotels, through: :bookings, source: :hotel")
