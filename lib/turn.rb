def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

  def position_taken?(board, index)
    if board[index] == " "
      false
    elsif board[index] == ""
      false
    elsif board[index] == nil
      false
    else
      true
   end
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(board, index, char = "X")
    board[index] = char
  end

  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    input = input_to_index(user_input)
    if valid_move?(board, input)
      move(board, input, char = "X")
      display_board(board)
    else
      turn(board)
    end
  end
