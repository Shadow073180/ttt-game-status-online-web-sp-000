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
  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
  win_index_4 = WIN_COMBINATIONS[3]
  win_index_5 = WIN_COMBINATIONS[4]
  win_index_6 = WIN_COMBINATIONS[5]
  win_index_7 = WIN_COMBINATIONS[6]
  win_index_8 = WIN_COMBINATIONS[7]
  position_1 = win_index_1[0] # load the value of the board at win_index_1
  position_2 = win_index_1[1] # load the value of the board at win_index_2
  position_3 = win_index_1[2] # load the value of the board at win_index_3
  position_4 = win_index_2[0] # load the value of the board at win_index_1
  position_5 = win_index_2[1] # load the value of the board at win_index_2
  position_6 = win_index_2[2] # load the value of the board at win_index_3
  position_7 = win_index_3[0] # load the value of the board at win_index_1
  position_8 = win_index_3[1] # load the value of the board at win_index_2
  position_9 = win_index_3[2] # load the value of the board at win_index_3
  position_10 = win_index_3[0] # load the value of the board at win_index_1
  position_11 = win_index_4[1] # load the value of the board at win_index_2
  position_12 = win_index_4[2] # load the value of the board at win_index_3
  position_13 = win_index_5[0] # load the value of the board at win_index_1
  position_14 = win_index_5[1] # load the value of the board at win_index_2
  position_15 = win_index_5[2] # load the value of the board at win_index_3
  position_16 = win_index_6[0] # load the value of the board at win_index_1
  position_17 = win_index_6[1] # load the value of the board at win_index_2
  position_18 = win_index_6[2] # load the value of the board at win_index_3
  position_19 = win_index_7[0] # load the value of the board at win_index_1
  position_20 = win_index_7[1] # load the value of the board at win_index_2
  position_21 = win_index_7[2] # load the value of the board at win_index_3
  position_22 = win_index_8[0] # load the value of the board at win_index_1
  position_23 = win_index_8[1] # load the value of the board at win_index_2
  position_24 = win_index_8[2] # load the value of the board at win_index_3
    if (board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X") || (board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O")
      return win_index_1
    elsif (board[position_4] == "X" && board[position_5] == "X" && board[position_6] == "X") || (board[position_4] == "O" && board[position_5] == "O" && board[position_6] == "O")
      return win_index_2
    elsif (board[position_7] == "X" && board[position_8] == "X" && board[position_9] == "X") || (board[position_7] == "O" && board[position_8] == "O" && board[position_9] == "O")
      return win_index_3
    elsif (board[position_10] == "X" && board[position_11] == "X" && board[position_12] == "X") || (board[position_10] == "O" && board[position_11] == "O" && board[position_12] == "O")
      return win_index_4
    elsif (board[position_13] == "X" && board[position_14] == "X" && board[position_15] == "X") || (board[position_13] == "O" && board[position_14] == "O" && board[position_15] == "O")
      return win_index_5
    elsif (board[position_16] == "X" && board[position_17] == "X" && board[position_18] == "X") || (board[position_16] == "O" && board[position_17] == "O" && board[position_18] == "O")
      return win_index_6
    elsif (board[position_19] == "X" && board[position_20] == "X" && board[position_21] == "X") || (board[position_19] == "O" && board[position_20] == "O" && board[position_21] == "O")
      return win_index_7
    elsif (board[position_22] == "X" && board[position_23] == "X" && board[position_24] == "X") || (board[position_22] == "O" && board[position_23] == "O" && board[position_24] == "0")
      return win_index_8.to_a
    elsif draw?(board)
      return false
      
  end
end



def full?(board)
end


def draw?(board)
  if full?(board) == true && !winner(board)
    return true
  end

end

def over?(board)
  if draw?(board)==true || full?(board) == true || winner(board) == true
    return true
  else
    return false
  end
end


def winner(board)
  case board
  when ["X","X","X"," "," "," "," "," "," "]
     return "X"
  when [" "," "," ","X","X","X"," "," "," "]
    return "X"
  when [" "," "," "," "," "," ","X","X","X"]
    return "X"
  when ["X"," "," ","X"," "," ","X"," "," "]
    return "X"
  when [" ","X"," "," ","X"," "," ","X"," "]
    return "X"
  when [" "," ","X"," "," ","X"," "," ","X"]
    return "X"
  when ["X"," "," "," ","X"," "," "," ","X"]
    return "X"
  when [" "," ","X"," ","X"," ","X"," "," "]
    return "X"

  when ["O","O","O"," "," "," "," "," "," "]
     return "O"
  when [" "," "," ","O","O","O"," "," "," "]
    return "O"
  when [" "," "," "," "," "," ","O","O","O"]
    return "O"
  when ["O"," "," ","O"," "," ","O"," "," "]
    return "O"
  when [" ","O"," "," ","O"," "," ","O"," "]
    return "O"
  when [" "," ","O"," "," ","O"," "," ","O"]
    return "O"
  when ["O"," "," "," ","O"," "," "," ","O"]
    return "O"
  when [" "," ","O"," ","O"," ","O"," "," "]
    return "O"
  end

end
