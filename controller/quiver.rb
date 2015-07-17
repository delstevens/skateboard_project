require 'csv'

class Quiver
  attr_reader :skateboards_array
  def initialize(file_name)
    @skateboards_array = []
      file_name += ".csv"
      CSV.foreach(file_name) do |row|
        if row[0] != "name"
          skateboards_array << Board.new(row[0],
            row[1],row[2],row[3],row[4])
        end
      end
  end

  def search_by_price(max_price)
    return_array = []
    for i in 0..@skateboards_array.length-1
      if @skateboards_array[i].cost[1..@skateboards_array[i].cost.length-1].to_i < max_price
        return_array << @skateboards_array[i]
      end
     end
     return_array
  end

  class Board
    attr_reader :name, :length, :cost, :truck_mount, :wheel_size
    def initialize(arg1,arg2,arg3,arg4,arg5)
      @name = arg1
      @length = arg2
      @cost = arg3
      @truck_mount = arg4
      @wheel_size = arg5
    end

  end



end



=begin
#driver code
this = Quiver.new("board_data")
p this.search_by_cost(200)
=end