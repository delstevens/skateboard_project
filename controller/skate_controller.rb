require './quiver.rb'
require './view.rb'


class Controller


  attr_reader :quiver

  def initialize
    @quiver = Quiver.new("board_data")
    @board_view = View.new
  end

end

board_database = Controller.new

p board_database.quiver.skateboards_array
p board_database.quiver.search_by_price(200)