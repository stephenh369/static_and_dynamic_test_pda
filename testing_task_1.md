### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # Function name should be checkForAce if following camelCase convention, however to match other function names it should use underscores (check_for_ace).
    if card.value = 1 # should be == for 'is equal to' 
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Typo in 'def' and no , separating parameters.
  if card1.value > card2.value # Indentation is wrong, line 19 - 24  needs to be indented.
    return card # 'card' should be 'card1'.
  else
    return card2
  end
end # This end needs to match the indentation of line 18
end # CardGame class is ending too early, following function will not work if called on this class.

def self.cards_total(cards) # Can't call self on a function that doesn't have a class.
  total # Total has not been assigned anything, needs = and a value.
  for card in cards
    total += card.value
    return "You have a total of" + total # return needs to go outside for loop or it will return on first iteration. total needs .to_s to change to string, could also add a space in at end of string or else it will say "total oftotal"
  end
end
```
