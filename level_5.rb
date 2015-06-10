# re-done with additional methods

class Player

  def play_turn(warrior)
    if @health == nil
      @health = warrior.health
    end

    if warrior.health < @health # if warrior's current health is less than last turn's health (AKA: getting shot by arrows from afar)
      choices(warrior)
    elsif warrior.health < 20
      warrior.rest!
    else
      choices(warrior)
    end
    @health = warrior.health
  end

  def choices(warrior)
    if warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel.enemy? == false
      warrior.walk!
    else
      attack(warrior) # isolates the attack so it only happens if it isn't a captive
    end
  end

  def attack(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    elsif
      warrior.walk!
    end
  end
end

# class Player
#
#   def play_turn(warrior)
#
#     if @health == nil
#       @health = warrior.health
#     end
#
#     if warrior.feel.captive?
#       warrior.rescue!
#     elsif warrior.feel.empty? == false
#       warrior.attack!
#     else # if the space is empty
#       if warrior.health < 20 # and if the health is less than 20
#         if warrior.health < @health # and if health is being depleted by an archer, walk towards the archer & attack upon reaching it
#           warrior.walk!
#         else # if health isn't being depleted, rest up
#           warrior.rest!
#         end
#       else # if health is full, walk
#         warrior.walk!
#       end
#     end
#     @health = warrior.health
#   end
# end
