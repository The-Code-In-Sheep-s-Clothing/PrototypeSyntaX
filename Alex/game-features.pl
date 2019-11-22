% board game dsl categories  

% this is here so you can query a list of categories in the interpreter without opening the source file 
category(singlePlayer). 
category(twoPlayer). 
category(automata).
category(hiddenInformation).
category(perfectInformation).
category(placement).
category(movement).
category(removal).
category(inALineDetection ).
category(gravity ).
category(playerHand).
category(polyPiece).
category(phases).
category(infiniteSize).
category(finiteSize).

game(ticTacToe). 
game(morris).              % arrange pieces into rows on a rails
game(chess).               % we can do chess endgames rather than the full game 
game(bughouseChess).       % you can capture opponent pieces into your hand and reuse
game(nim).                 % remove objects from piles, player to take last object loses 
game(notakto).             % like ttt but with only one piece and the player to make a line loses 
game(cellularAutomata).
game(darkChess).           % chess where opponent pieces are hidden 
game(go).
game(checkers).
game(infiniteChess).
game(amazons).             % A game where you move queens around a chessboard and attack w/ shooting
game(hanoi). 
game(connectFour). 
game(checkers). 
game(gameOfLife). 
game(chomp).               % piece removal game, player to remove top left piece loses 
game(blokus).              % specify piece geometries as forced/auotmatic placemnt of sub pieces 

singlePlayer(nim).
singlePlayer(notakto).
singlePlayer(cellularAutomata).
singlePlayer(hanoi). 

twoPlayer(X) :- game(X), \+ singlePlayer(X). 

% zero turn, zero player "games" - more like simulations
automata(gameOfLife). 
automata(cellularAutomata). 

hiddenInformation(darkChess). 
perfectInformation(X) :- game(X), \+ hiddenInformation(X). 

% (offboard, board) move 
placement(ticTacToe).
placement(morris).
placement(bughouseChess).
placement(nim).
placement(notakto).
placement(go).
placement(connectFour). 

% (board, board) move 
movement(morris).
movement(chess).
movement(bughouseChess).
movement(darkChess).
movement(checkers).
movement(infiniteChess).
movement(amazons).
movement(hanoi). 
movement(checkers). 

% (board, offboard) move 
% in some games this is also capture
removal(chess). 
removal(checkers). 
removal(nim). 
removal(morris). 
removal(amazons). 
removal(chomp). 

% at least one of n in a row, column, diagonal  
inALineDetection(ticTacToe). 
inALineDetection(connectFour). 
inALineDetection(morris). 

% pieces fall to the bottom of a column 
gravity(connectFour). 
gravity(hanoi). 

playerHand(bughouseChess). % better term? players capture opponent pieces and can reuse them 

% different types of pieces (e.g. pawns and rooks)  
polyPiece(checkers). 
polyPiece(hanoi). 
polyPiece(chess). 

phases(morris). 
phases(darkChess).

% nonRectangular

infiniteSize(infiniteChess). 

finiteSize(X) :- game(X), \+ infiniteSize(X). 
