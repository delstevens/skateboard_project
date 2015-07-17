class View

  def initialize

  end

  def render_skateboard skateboard
    deck = render_deck(skateboard.length)
    wheels = render_wheels(skateboard.length, skateboard.wheels)
    render(skateboard.name, skateboard.length, skateboard.cost, deck, wheels)
    return gets.chomp
  end


  CHAR STASH


  def render_deck(length)
    return "▀▀▀▀▀" + ("█"*(length/1.2)) + "▀▀▀▀▀"
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

    puts '************************************************'
    puts '*       Model: #{name}                         *'
    puts '*       Length: #{length}"                     *'
    puts '*       Cost: #{cost}                          *'
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts deck
    puts wheels
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts '*                                              *'
    puts '************************************************'
    puts '    [P]:previous    [N]:next      [X]:exit       '

  end



end