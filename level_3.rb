class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < 20
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  end
end



#    if warrior.feel.empty? && warrior.health <20
#        warrior.rest!
#    elsif
#        warrior.walk!
#   else
#      warrior.attack!
#   end


# class Player
#   def play_turn(warrior)
#     if warrior.feel.empty? == false
#       warrior.attack!
#     elsif warrior.feel.empty? && warrior.health >= 20
#         warrior.walk!
#     else
#         warrior.rest!
#     end
#   end
# end
