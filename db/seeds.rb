# require 'faker'

# Model for creating a question and associated answer
# Question.create(text: "").answers << Answer.create(text: "")


def start_text_for_model(class_name, associations = nil)
  return "class #{class_name} < ActiveRecord::Base\r\n  #{associations}\r\nend"
end

def start_text_for_migration(class_name, associations = nil)
  return "class Create#{class_name} < ActiveRecord::Migration\r\n  #{associations}\r\nend"
end


# Theater_Screens_Screenings
Question.create!(text: "What is the relationship between a theater and a screen?", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "if it's not has_one, it might be has...", start_text: start_text_for_model("Theater")).answers << Answer.create!(text: start_text_for_model("Theater", "has_many :screens"))


Question.create!(text: "What is the relationship between a theater and a screening?",
  schema_img_filename: "theaters-screens-screenings-schema.png", hint: "has_many: :through is a thing", start_text: start_text_for_model("Theater", "has_many :screens\n")).answers << Answer.create!(text: start_text_for_model("Theater", "has_many :screens\r\n  has_many :screenings, through: :screens"))

#Question 3:
Question.create!(text: "What is the relationship between a screen and a theater?", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "It's belongs_to, ya rube", start_text: start_text_for_model("Screen").answers << Answer.create!(text: start_text_for_model("Screen", "belongs_to :theater"))

#Question 4:
Question.create!(text: "What is the relationship between a screen and a screening?", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "if it's not has_one, it might be has_...", start_text: start_text_for_model("Screen")).answers << Answer.create!(text: start_text_for_model("Screen", "has_many :screenings"))

#Question 5:
Question.create!(text: "What is the relationship between a screening and a screen?", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "It's belongs_to, ya rube", start_text: start_text_for_model("Screening")).answers << Answer.create!(text: start_text_for_model("Screening", "belongs_to :screen"))

#Question 6:
Question.create!(text: "What is the relationship between a screening and a theater?", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "It's belongs_to, ya rube", start_text: start_text_for_model("Screening")).answers << Answer.create!(text: start_text_for_model("Screening", "has_one :theater, through: :screen"))

#Migration file questions:

#Question 7:
Question.create!(text: "Write the migration file for the theaters table.", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "Good luck!! Hahahaha!!!", start_text: start_text_for_migration("Theaters")).answers << Answer.create!(text: start_text_for_migration("Theaters", "def change\n  create_table :theaters do |t|\n    t.string :name\n    t.timestamps(null: false)\n  end\nend"))

Question.create!(text: "Write the migration file for the screens table.", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "Good luck!! Hahahaha!!!", start_text: start_text_for_migration("Screens")).answers << Answer.create!(text: start_text_for_migration("Screens", "def change\r\n  create_table :screens do |t|\r\n    t.integer :theater_id\r\n    t.timestamps(null: false)\r\n  end\r\nend"))

Question.create!(text: "Write the migration file for the screenings table.", schema_img_filename: "theaters-screens-screenings-schema.png", hint: "Good luck!! Hahahaha!!!", start_text: start_text_for_migration("Screenings")).answers << Answer.create!(text: start_text_for_migration("Screenings", "def change\r\n  create_table :screenings do |t|\r\n    t.string :movie_title\r\n    t.datetime :start_time\r\n    t.integer :screen_id\r\n    t.timestamps(null: false)\r\n  end\r\nend"))

# class CreateTheaters < ActiveRecord::Migration
#   def change
#     create_table :theaters do |t|
#       t.string :name
#       t.timestamps(null: false)
#     end
#   end
# end

# class CreateScreens < ActiveRecord::Migration
#   def change
#     create_table :screens do |t|
#       t.integer :theater_id
#       t.timestamps(null: false)
#     end
#   end
# end

# class CreateScreenings < ActiveRecord::Migration
#   def change
#     create_table :screenings do |t|
#       t.string :movie_title
#       t.datetime :start_time
#       t.integer :screen_id
#       t.timestamps(null: false)
#     end
#   end
# end


##### Questions and Answers for T-Shirt Challenge

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
