class View

  def render_skateboard(skateboard)
    case skateboard.truck_mount
    when "top mount"
      render_top_mount(skateboard)
    when "drop thru"
      render_drop_thru(skateboard)
    when "drop deck"
      render_drop_deck(skateboard)
    end
  end


  def render_top_mount(skateboard)
    system 'cls'
    system 'clear'
    top_view_top = render_top_view_small(skateboard.length.to_i)
    top_view_center_one = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_center_two = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_bottom = render_top_view_small(skateboard.length.to_i)
    deck = render_deck(skateboard.length.to_i)
    wheels = render_wheels(skateboard.length.to_i)
    render(skateboard.name, skateboard.length.to_i, skateboard.cost, deck, wheels, top_view_top, top_view_center_one, top_view_center_two, top_view_bottom)
      return gets.chomp.downcase
  end

  def render_drop_deck(skateboard)
    system 'cls'
    system 'clear'
    top_view_top = render_top_view_small(skateboard.length.to_i)
    top_view_center_one = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_center_two = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_bottom = render_top_view_small(skateboard.length.to_i)
    deck = render_deck(skateboard.length.to_i)
    wheels = render_wheels(skateboard.length.to_i)
    render(skateboard.name, skateboard.length.to_i, skateboard.cost, deck, wheels, top_view_top, top_view_center_one, top_view_center_two, top_view_bottom)
      return gets.chomp.downcase
  end

  def render_drop_thru(skateboard)
    system 'cls'
    system 'clear'
    top_view_top = render_top_view_small(skateboard.length.to_i)
    top_view_center_one = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_center_two = render_top_view_center(skateboard.length.to_i, skateboard.truck_mount)
    top_view_bottom = render_top_view_small(skateboard.length.to_i)
    deck = render_deck(skateboard.length.to_i)
    wheels = render_wheels(skateboard.length.to_i)
    render(skateboard.name, skateboard.length.to_i, skateboard.cost, deck, wheels, top_view_top, top_view_center_one, top_view_center_two, top_view_bottom)
      return gets.chomp.downcase
  end

  def render_top_view_small(length)
    return "          " + ("▓"*(length/1.2)) + ""
  end

  def render_top_view_center(length, deck_type)
    case deck_type
    when "top mount"
     return "     ▓▓▓▓▓" + ("▓"*(length/1.2)) + "▓▓▓▓▓"
    when "drop thru"
      return "     ▓▓░░▓" + ("▓"*(length/1.2)) + "▓░░▓▓"
    when "drop deck"
     return "     ▓▓▓▓▓" + ("▓"*(length/1.2)) + "▓▓▓▓▓"
    end
  end

  def render_search_query
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts "                    To search the database"
    puts "                please enter your budget limit"
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts "   [P]:previous     [N]:next        [X]:exit     [S]:search    "
    return gets.chomp.to_i
  end

  def render_deck(length)
    return "     ▀▀▀▀▀" + ("█"*(length/1.2)) + "▀▀▀▀▀"
  end


  def render_wheels(length)
    return "      (_) " + (" "*(length/1.2)) + " (_)  "
  end

  def render name, length, cost, deck, wheels, top_view_top,top_view_center_one, top_view_center_two, top_view_bottom
    puts ""
    puts "                 Model: #{name}                         "
    puts "                 Length: #{length} inches                      "
    puts "                 Cost: #{cost}                          "
    puts "                                              "
    puts " "
    puts top_view_top
    puts top_view_center_one
    puts top_view_center_two
    puts top_view_bottom
    puts "                                              "
    puts "                                              "
    puts "                                             "
    puts "                                             "
    puts deck
    puts wheels
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts "                                              "
    puts ""
    puts "   [P]:previous     [N]:next        [X]:exit     [S]:search    "
  end





  def render_intro
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"

    sleep (1)
    system 'cls'
    system 'clear'
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "****************                           **********************"
    puts "****************          WELCOME          **********************"
    puts "****************                           **********************"
    puts "****************                           **********************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"

    sleep (1)
    system 'cls'
    system 'clear'
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "****************                           **********************"
    puts "****************            TO             **********************"
    puts "****************                           **********************"
    puts "****************                           **********************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
    puts "*****************************************************************"
            sleep (1)

             system 'cls'
    system 'clear'
    puts "          "
    puts " "
    puts " "
    puts "                                 "
    puts " "
    puts "           "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                            "
    puts "     "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "

    sleep (0.1)

             system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  "
    puts " "
    puts "           "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                            "
    puts "     "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "

    sleep (0.1)

             system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                            "
    puts "     "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "

    sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                            "
    puts "     "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "

    sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                              animation!"
    puts "     "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "
        sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                              animation!"
    puts "     omg! "
    puts " "
    puts " "
    puts "                                              "
    puts "             "
    puts " "
    puts "                 "
        sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                              animation!"
    puts "     omg! "
    puts " "
    puts " "
    puts "                                              wow"
    puts "             "
    puts " "
    puts "                 "
        sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                              animation!"
    puts "     omg! "
    puts " "
    puts " "
    puts "                                              wow"
    puts "            shading! "
    puts " "
    puts "                 "

    sleep (0.1)
    system 'cls'
    system 'clear'
    puts "         so 2d! "
    puts " "
    puts " "
    puts "                                  design excellence"
    puts " "
    puts "          cool "
    puts " "
    puts "                            THE "
    puts ""
    puts "                   SKATEBOARDERATOR!!!!!"
    puts " "
    puts " "
    puts "                              animation!"
    puts "     omg! "
    puts " "
    puts " "
    puts "                                              wow"
    puts "            shading! "
    puts " "
    puts "                    very skateboard"
    sleep (2)
  end


  # def render_intro
  #   puts"+------------------------------------+"
  #   puts"|        |                      \    |"
  #   puts"|        |      _                \   |"
  #   puts"|         '.   | |                |  |"
  #   puts"|          |   //                 |  |"
  #   puts"|          |  |/                   \ |"
  #   puts"|          |  /                |\  | |"
  #   puts"|          | |                 | | | |"
  #   puts"|          | |                .  | | |"
  #   puts"|          ; |       .'|     <   |  \|"
  #   puts"|         /  |     .-  '-\    \  \__/|"
  #   puts"|        |   |     |      \    :     |"
  #   puts"|         \_/ \    |       \   |     |"
  #   puts"|              :   |        \  |     |"
  #   puts"|              |   |        |   \    |"
  #   puts"|             _|   \        |    .   |"
  #   puts"|           .'      ;        \    )  |"
  #   puts"|'8\________|______/__________\_.:P' |"
  #   puts"| 'Y8888888888888888888888888888P'   |"
  #   puts"|        (_)               (_)lka    |"
  #   puts"+------------------------------------+"
  #   sleep (0.1)
  #   puts "+------------------------------------+"
  #   puts"|              /                 |   |"
  #   puts"|             /                  |   |"
  #   puts"|            /                   |   |"
  #   puts"|           |                    |   |"
  #   puts"|           |          .'        |   |"
  #   puts"|           |        .'  |       |   |"
  #   puts"|           \      .'     \      |   |"
  #   puts"|            |     |       \     |   |"
  #   puts"|            |    /         ;    |   |"
  #   puts"|            |   |          |   /    |"
  #   puts"|            |   |          |   |    |"
  #   puts"|            |   |          \   |    |"
  #   puts"|            |   :           |  |    |"
  #   puts"|            /    \          |  |    |"
  #   puts"| _         /     .>         |   \   |"
  #   puts"| "88b.__  |____.'           \   |   |"
  #   puts"|   Y88888888888Oooooo._      \__| _ |"
  #   puts"|       (_)    'Y888888888888888888P'|"
  #   puts"|                         (_)lka     |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|  \                          |      |"
  #   puts"|   \         _.' \           |      |"
  #   puts"|    \     .-'      \         |      |"
  #   puts"|     \   |           \       |      |"
  #   puts"|      \   \            \     |      |"
  #   puts"|       \  |             \     \     |"
  #   puts"|        :  \             |     \    |"
  #   puts"|        \   \__          |     |    |"
  #   puts"|       88b     /          \    |    |"
  #   puts"|        Y8b   |           |     \   |"
  #   puts"|         '8b  |            \    |   |"
  #   puts"|          _'8b|             |   |   |"
  #   puts"|         (_) '8b            |   |   |"
  #   puts"|               '8b          |   |   |"
  #   puts"|                 '8b        |   |   |"
  #   puts"|                   '8b     /    |   |"
  #   puts"|                     '8b   |    |   |"
  #   puts"|                       _8b |    /   |"
  #   puts"|                      (_)Y8ooooP    |"
  #   puts"|                        lka         |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|\   |              '.     |         |"
  #   puts"| \   \               \    |         |"
  #   puts"|  \   \               \    \        |"
  #   puts"|  |    '.              \    |       |"
  #   puts"|  <     /               \   |       |"
  #   puts"|   \ .'/_               |    \      |"
  #   puts"|    |8888b.              \   |      |"
  #   puts"|    Y888888b.             \  |      |"
  #   puts"|     Y8888(_)b.           |  |      |"
  #   puts"|       Y8//88888b.         |   \    |"
  #   puts"|       (_)Y888888b.        >   |    |"
  #   puts"|           'Y888888b.     |    |    |"
  #   puts"|             'Y888888b.   |    |    |"
  #   puts"|               'Y888888b. |    /    |"
  #   puts"|                 'Y888(_)b.   /     |"
  #   puts"|                   'Y//8888b.       |"
  #   puts"|                   (_)Y888888)      |"
  #   puts"|                        """""lka    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"
  #   puts"+---------------------------"---------+"
  #   puts"|     _\  \                 |     |  |"
  #   puts"|    /     \                |     |  |"
  #   puts"|   /    .'                 \     |  |"
  #   puts"|  /   .' __                 \    |  |"
  #   puts"|  \_.' .d88b._               \   |  |"
  #   puts"|      888888(_)              /   |  |"
  #   puts"|       Y8888//88b.           |   \  |"
  #   puts"|        Y88//888888b.         \   \ |"
  #   puts"|         (_)8888888888b.       \   ||"
  #   puts"|            'Y88888888888b. _   \  ||"
  #   puts"|               'Y8888888888(_)   "" |"
  #   puts"|                  'Y8888888//8b.    |"
  #   puts"|                     'Y888//8888\   |"
  #   puts"|                        (_)888888)  |"
  #   puts"|                          'Y888P'   |"
  #   puts"|                            lka     |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|/""      |                  |  |    |"
  #   puts"|\___..--'                   |   \   |"
  #   puts"|                            |    \  |"
  #   puts"|                             \    . |"
  #   puts"|                              '-..' |"
  #   puts"|             __                     |"
  #   puts"|      ____  (_))                    |"
  #   puts"|      Y8888888b.                    |"
  #   puts"|              Y88b.                 |"
  #   puts"|                 'Y8b._    __       |"
  #   puts"|                    'Y8b._(_))      |"
  #   puts"|                        Y888b.      |"
  #   puts"|                           'Y8b.    |"
  #   puts"|                          lka'Y8b.  |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|    \   |            \   |          |"
  #   puts"|    |   |             \  |          |"
  #   puts"|    /    \            |  |          |"
  #   puts"|  _/      \           |   \         |"
  #   puts"| |   ___..'           |   |         |"
  #   puts"|  """                 |   |         |"
  #   puts"|   ..ooooo...          """"         |"
  #   puts"|  d888888888888888oooo....          |"
  #   puts"|  8888888888888888888888888888b.    |"
  #   puts"|  'Y8888888888888888888888888888|   |"
  #   puts"|          """"""8888888888888888;   |"
  #   puts"|                    '''8888888P'    |"
  #   puts"|                         lka        |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|     \    (         \     |  |      |"
  #   puts"|      \    \         \    /  |      |"
  #   puts"|       \   |         '   |   |      |"
  #   puts"|       |   |          \  :___;      |"
  #   puts"|       |   |           \   |        |"
  #   puts"|       |   |           |   |        |"
  #   puts"|       ;    \          |   |        |"
  #   puts"|     .'     |          |   |        |"
  #   puts"|   .(___..--'___________\   \__.8|  |"
  #   puts"|   'Y8888888888888888888b.__'88P'   |"
  #   puts"|        (_)-'            (_)-lka    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|        /          .'  .' |         |"
  #   puts"|       /        .'.  .'   |         |"
  #   puts"|      |       .'.'  /    /          |"
  #   puts"|      \      /.'   /     |          |"
  #   puts"|      |     / |    \     |          |"
  #   puts"|      |    /  |     \    |          |"
  #   puts"|       \   |   '"    \   \          |"
  #   puts"|       |   |         |    |         |"
  #   puts"|        \  |          \   |         |"
  #   puts"|        |  |           \  |         |"
  #   puts"|        |  \           |  |         |"
  #   puts"|        /   .           \  \        |"
  #   puts"|       /    .           |   \       |"
  #   puts"|   .--|___.'            |    |      |"
  #   puts"|    'Y8888888888oooooooo:____:__..  |"
  #   puts"|      '"(_)"""""""''Y888888888888/  |"
  #   puts"|                         (_)        |"
  #   puts"|                                    |"
  #   puts"|                                    |"
  #   puts"+------------------------------------+"
  #   sleep(0.1)
  #   puts"+------------------------------------+"
  #   puts"|         |      _.  |   |           |"
  #   puts"|         |   _.  _. |   |           |"
  #   puts"|        |_.  _.       |             |"
  #   puts"|       |  .          |              |"
  #   puts"|      |   .    _      |             |"
  #   puts"|     |_.-    . \     |              |"
  #   puts"|     |       |   |     |            |"
  #   puts"|     |          \     |             |"
  #   puts"|      \     |     \    |            |"
  #   puts"|       \    |      |   |            |"
  #   puts"|       |    |      |   |            |"
  #   puts"|        \   |      |   :            |"
  #   puts"|        |   |       \   \           |"
  #   puts"|        |   |        \   :          |"
  #   puts"|        |   |         \  |          |"
  #   puts"|   __  /    |          \  \         |"
  #   puts"|  8888<____. 888ooo..._|   \__oo.   |"
  #   puts"|     Y88888888888888888b___d88P     |"
  #   puts"|       (_)              (_)         |"
  #   puts"+------------------------------------+"

  # end

end

