class Supporter < ActiveRecord::Base
  validates :name, presence: { message: "Oh, c'mon! You need to have some name!" },
                   length:   { in: 3..100, 
                               too_short: "Now you're trying to be funny :). Provide REAL name, please!",
                               too_long: "And now your trying to be smart! Provide something shorter than 100 chars ;)." }
  validates :location, length: { maximum: 35, message: "There is no such place ;)" }
end
