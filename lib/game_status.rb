# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2], [3,4,5], [6,7,8], [0,3,6],
  [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


board = [" "," "," "," X"," "," "," "," "," "]




def won?(board)
  indexes = []
  WIN_COMBINATIONS.each do |win_combination|
  if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
    return win_combination
end
end
end

def full?(board)
a = 0
b = 0
  if board[a] == "X" || board[a] == "O"
    a += 1
    b += 1
  else
    a += 1
  end
   if b == 9
     return true
   end
 end

 def draw?(board)
   if won?(board)
     return false
   end
end

full?(board)
