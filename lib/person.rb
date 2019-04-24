require 'pry'
# your code goes here
class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(new_level)
      if new_level < 0
      @happiness = 0
      elsif new_level > 10
      @happiness = 10
      else @happiness = new_level
      end
end

def happiness=(new_level)
      if new_level < 0
      @happiness = 0
      elsif new_level > 10
      @happiness = 10
      else @happiness = new_level
      end
end

def hygiene=(new_level)
      if new_level < 0
      @hygiene = 0
      elsif new_level > 10
      @hygiene = 10
      else @hygiene = new_level
      end
end


def happy?
 if @happiness > 7
   return true
 else false
end
end

def clean?
 if @hygiene > 7
   return true
 else false
end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
  # new_cleanliness = @hygiene
  # hygiene(new_cleanliness)
end

def work_out
self.hygiene -= 3
self.happiness += 2

"♪ another one bites the dust ♫"

end


def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person,topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    "blah blah partisan blah lobbyist"

  elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    "blah blah sun blah rain"

  else topic == "other"
    "blah blah blah blah blah"
  end
end



end












# miles = Person.new("Miles")
# # miles => 8
# miles.change_happiness(9)
