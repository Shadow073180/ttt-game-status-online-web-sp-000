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
  i = 1
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |x|
  win_i = [x[0], x[1], x[2]]
  i += 1
end
end
end

won?(board)
