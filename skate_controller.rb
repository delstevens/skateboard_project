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
reveal_response = board_database.board_show.render_skateboard(board_database.quiver.skateboards_array[showing])
while reveal_response.downcase != "x"
  reveal_response = board_database.board_show.render_skateboard(board_database.quiver.skateboards_array[showing])
  showing = board_database.quiver.next_action(reveal_response,showing)
  p showing
end

#TODO
#generate an array from a search query
#page thnrough array using Next and Previous
#this_array = search_by_price(200)



