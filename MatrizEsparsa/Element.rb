class Element
    attr_accessor :row, :col, :right, :below, :data

  def initialize row, col, data
    @right = self
    @below = self
    @row = row
    @col = col
    @data = data
  end

  def showCoordinates
    "Row: #{@row} -- Column: #{@col}"
  end

end
