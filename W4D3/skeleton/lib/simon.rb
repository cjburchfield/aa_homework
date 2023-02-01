class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until @game_over == true
    if @game_over == true
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over == true
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    # The specs don't test require_sequence. The goal of
    # require_sequence is to
    #   prompt the user to repeat back the new sequence that was 
    #   just shown to them, one color at a time. If they give an incorrect 
    #   color, it should immediately set @game_over to be true.
  end

  def add_random_color
    idx = rand(0...COLORS.length)
    color = COLORS[idx]
    @seq << color
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
