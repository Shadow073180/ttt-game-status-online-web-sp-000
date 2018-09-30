# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2], [3,4,5], [6,7,8], [0,3,6],
  [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


board = [" "," "," "," "," "," "," "," "," "]




def won?(board)
  indexes = []
  WIN_COMBINATIONS.each do |win_combination|
  if (win_combination[0] == "X" && win_combination[1] == "X" && sin_combination[2] == "X") || (win_combination[0] == "O" && win_combination[1] == "O" && sin_combination[2] == "O")
    return win_combination
end
end

end

won?(board)
