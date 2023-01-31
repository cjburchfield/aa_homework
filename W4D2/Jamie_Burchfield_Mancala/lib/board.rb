class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new} 
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13 #6 and 13 are the point stores
        4.times do
          cup << :stone #spec calls for using :stones
      end
    end
  end


  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos >= 13
    raise "Starting cup is empty" if @cups[start_pos].length == 0 #An empty cup has a length of 0.
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos] #gathering stones from selected cups
    @cups[start_pos] = [] #empties the selected cup

    cup_idx = start_pos #changing to match next_turn language
    until stones.empty? #until we run out of stones
      cup_idx += 1 #advancing on the board
      cup_idx = 0 if cup_idx > 13 #resetting to round the corners
      if cup_idx == 6 #checking to see if/which player's point store
        @cups[6] << stones.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[cup_idx] << stones.pop
      end
    end

    render #per specs
    next_turn(cup_idx) #per specs
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1 #do not understand why this is 1 not 0
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side1 = @cups[0..6]
    side2 = @cups[7..12]

    side1.all? {|cup| cup.empty? } || side2.all? {|cup| cup.empty?}
  end

  def winner
    player1_points = @cups[6].count
    player2_points = @cups[13].count

    if player1_points == player2_points
      return :draw #:draw from rspecs
    elsif player1_points > player2_points
      return @name1
    else
      return @name2
    end
  end
end
