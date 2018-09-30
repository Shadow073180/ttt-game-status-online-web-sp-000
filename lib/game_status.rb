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
  counter = 1
  WIN_COMBINATIONS.each do |x|
  combination_counter = win_combination
  print combination(counter)
  counter += 1
end
end
