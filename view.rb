class View

  def render_skateboard(skateboard)
    deck = render_deck(skateboard.length.to_i)
    wheels = render_wheels(skateboard.length.to_i)
    render(skateboard.name, skateboard.length.to_i, skateboard.cost, deck, wheels)
    return gets.chomp
  end

  def render_deck(length)
    return "▀▀▀▀▀" + ("█"*(length/1.2)) + "▀▀▀▀▀"
  end


  def render_wheels(length)
    return "  (_) " + (" "*length) + " (_)  "
  end

  def render name, length, cost, deck, wheels
    puts "************************************************"
    puts "       Model: #{name}                         "
    puts "       Length: #{length} inches                      "
    puts "       Cost: #{cost}                          "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts deck
    puts wheels
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "************************************************"
    puts "    [P]:previous    [N]:next      [X]:exit      "
  end
end