class Player

  def play_turn(warrior)

    if @health == nil
      @health = warrior.health
    end

    if warrior.feel.empty? == false
      warrior.attack!
    else # if the space is empty
      if warrior.health < 20 # and if the health is less than 20
        if warrior.health < @health # and if health is being depleted by an archer, walk towards the archer (turn starts again @ line 9 to attack)
          warrior.walk!
        else # if health isn't being depleted, rest up
          warrior.rest!
        end
      else # if health is full, walk
        warrior.walk!
      end
    end
    @health = warrior.health
  end
end
