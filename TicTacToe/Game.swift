//
//  Game.swift
//  TicTacToe
//
//  Created by Austin Potts on 2/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Game {

  private(set) var board: GameBoard = GameBoard()
  internal var activePlayer: GameBoard.Mark? = .x
  internal var gameIsOver: Bool = false
  internal var winningPlayer: GameBoard.Mark? = nil
    
    
    // Create the enum for the Game State to check if active, won or cat
    enum GameState: Equatable {
        case active(GameBoard.Mark)
        case won(GameBoard.Mark)
        case cat
    }
    
    // Make a variable to hold the game states, for active (or not)
    var gameState = GameState.active(.x)
    
    
    // Restarts the game to a fresh state with an empty board, and player X starting.
    mutating internal func restart() {
        
        board = GameBoard()
        activePlayer = .x
        gameIsOver = false
        winningPlayer = nil
        gameState = .active(.x)
    }
    
    //adds a mark for the currently active player at the given coordinate. Updates game state
    mutating internal func makeMark(at coordinate: Coordinate) throws {
        
    // Guard that we have the Game State for use
    guard case let GameState.active(player) = gameState else {
        NSLog("The game is at end")
        return
    }
        
        do {
            // Place the player X,O
            try board.place(mark: player, on: coordinate)
            
            // Check if the player won
            if game(board: board, isWonBy: player) {
                
            gameState = .won(player)
            
           // Assign winning player
            winningPlayer = player
            
            // Game is now over
            gameIsOver = true
                
            // if Board is full with no winner, Cats
             } else if board.isFull {
            gameState = .cat
            gameIsOver = true
                
             } else {
            // Active player
            let activePlater = player == .x ? GameBoard.Mark.o : GameBoard.Mark.x
            self.activePlayer = activePlater
            gameState = .active(activePlater)
             }
              } catch {
                  NSLog("This move not allowed")
                  throw error
              }
      }
}
