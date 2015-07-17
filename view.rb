# class View

#   def initialize

#   end

#   def render_skateboard(item)
#     p item
#     this_array = ["N", "P", "X"]
#     return this_array[rand(3)]
#   end
# end


class View

  def initialize

  end

  def render_skateboard skateboard
    deck = render_deck(skateboard.length.to_i)
    wheels = render_wheels(skateboard.length.to_i)
    render(skateboard.name, skateboard.length.to_i, skateboard.cost, deck, wheels)
    return gets.chomp
  end

  def render_deck(length)
    string ="▀▀▀▀▀" + ("█"*(length/1.2)) + "▀▀▀▀▀"
    return string
  end


  def render_wheels(length)
    return "  (_) " + (" "*length) + " (_)  "
  end



# -══τ═══════════τ═══-
#     (O)            (O)



#  ▀▀▀▀▀████████████████████████████████████████▀▀▀▀▀▀            █ ▄ ▀ ▐  ▌ -
#    (_)                                                     (_)


#  ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡
#   ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡

  def render name, length, cost, deck, wheels

    puts "************************************************"
    puts "*       Model: #{name}                         "
    puts "*       Length: #{length} inches                      "
    puts "*       Cost: #{cost}                          "
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts deck
    puts wheels
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts "*                                              "
    puts "************************************************"
    puts "    [P]:previous    [N]:next      [X]:exit      "

  end



end

