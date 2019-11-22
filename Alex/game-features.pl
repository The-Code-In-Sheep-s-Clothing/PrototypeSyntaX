game(ticTacToe).
game(morris).
game(chess).
game(bughouseChess).
game(nim).
game(notakto).
game(cellularAutomata).
game(darkChess).
game(go).
game(checkers).
game(infiniteChess).
game(amazons).
game(hanoi). 


singlePlayer(nim).
singlePlayer(notakto).
singlePlayer(cellularAutomata).
singlePlayer(hanoi). 

twoPlayer(X) :- game(X), \+ singlePlayer(X). 

hiddenInformation(darkChess). 
perfectInformation(X) :- game(X), \+ hiddenInformation(X). 

% (offboard, board) move 
placement(ticTacToe).
placement(morris).
placement(bughouseChess).
placement(nim).
placement(notakto).
placement(go).

% (board, board) move 
movement(morris).
movement(chess).
movement(bughouseChess).
movement(darkChess).
movement(checkers).
movement(infiniteChess).
movement(amazons).
movement(hanoi). 

% (board, offboard) move 
% removal(x).

% at least one of n in a row, column, diagonal as a victory rule 
% nInALineWin(x). 

% gravity(x).  

playerHand(bughouseChess). % not sure what this means 

phases(morris). 
phases(darkChess).

infinite(infiniteChess). 

finiteSize(X) :- game(X), \+ infiniteSize(X). 
