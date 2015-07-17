require './quiver.rb'
require './view.rb'


class Controller

  attr_reader :quiver, :board_show

  def initialize
    @quiver = Quiver.new("skateboards")
    @board_show = View.new
  end

end

board_database = Controller.new


showing = 0
reveal_response = ""

#board_database.board_show.render_intro
while reveal_response.downcase != "x"
  reveal_response = board_database.board_show.render_skateboard(board_database.quiver.skateboards_array[showing])
  if reveal_response.downcase == "s"
    board_database.quiver.skateboards_array = board_database.quiver.search_by_price(board_database.board_show.render_search_query)
    reveal_response = board_database.board_show.render_skateboard(board_database.quiver.skateboards_array[0])
  end
  showing = board_database.quiver.next_action(reveal_response,showing)
end



#TODO
#generate an array from a search query
#page thnrough array using Next and Previous



