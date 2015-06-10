# couldn't get through level 6. the lil dude is stuck in the back going backwards and forwards after rescuing that captive

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
      choices(warrior) # when first starting level, this executes
    end
    @health = warrior.health
  end

  def choices(warrior)
    if warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel(:backward).captive?
      warrior.rescue!(:backward)
    elsif warrior.feel(:backward).empty?
      warrior.walk!(:backward)
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
