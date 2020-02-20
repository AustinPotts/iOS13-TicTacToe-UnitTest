//
//  GameTests.swift
//  TicTacToeTests
//
//  Created by Austin Potts on 2/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {

    func testGameBoard() {
           let game = Game()
           
           //Checking to see that game board starts out empty
           XCTAssertFalse(game.board.isFull)
           
           // Checking inital player is X
           
           XCTAssertEqual(game.activePlayer, GameBoard.Mark.x)
           
           //check that game isnt over at start
           XCTAssertFalse(game.gameIsOver)
           
           //check winning player dose not have a value
           XCTAssertNil(game.winningPlayer)
           
           //checking inital game state is active
           XCTAssertEqual(game.gameState, Game.GameState.active(.x))
       }
    
//    func testActPlayerChanges() {
//        var game = Game()
//
//        try! game.makeMark(at: (2,2))
//
//        XCTAssertEqual(game.activePlayer, GameBoard.Mark.o)
//        XCTAssertNotEqual(game.activePlayer, GameBoard.Mark.x)
//
//        try! game.makeMark(at: (0,0))
//
//        XCTAssertEqual(game.activePlayer, GameBoard.Mark.x)
//        XCTAssertNotEqual(game.activePlayer, GameBoard.Mark.o)
//    }
//
}
