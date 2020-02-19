//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Austin Potts on 2/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

// TDD - Test Driven Development

class GameAITests: XCTestCase {

    func testWinCheckingVerticall(){
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,0))
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .x, on: (0,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    
    
    }
    
    func testWinVerticall2(){
        
        var board = GameBoard()
        try! board.place(mark: .o, on: (1,0))
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
        
        
    }
    
    func testWinVerticall3(){
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .o, on: (2,0))
        try! board.place(mark: .o, on: (2,1))
        try! board.place(mark: .o, on: (2,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
        
        
    }
    
    func testWinHorizontalWin1(){
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .x, on: (2,0))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .o, on: (2,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
    }
    
    func testHorizontalWin2 () {
        
        var board = GameBoard()
        
        
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .x, on: (2,1))
        try! board.place(mark: .o, on: (1,2))
        try! board.place(mark: .o, on: (2,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
    }
    
    func testHorizontalWin3 () {
           
           var board = GameBoard()
           
           
           try! board.place(mark: .x, on: (0,2))
           try! board.place(mark: .x, on: (1,2))
           try! board.place(mark: .x, on: (2,2))
           try! board.place(mark: .o, on: (0,0))
           try! board.place(mark: .o, on: (1,0))
           
           XCTAssertTrue(game(board: board, isWonBy: .x))
           XCTAssertFalse(game(board: board, isWonBy: .o))
           
       }
    
    func testWinCheckingDiagonal1(){
        
        var board = GameBoard()
        

        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .x, on: (2,2))
        try! board.place(mark: .o, on: (0,2))
        try! board.place(mark: .o, on: (1,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
    }
    
    func testWinCheckingDiagonal2(){
         
         var board = GameBoard()
         

         try! board.place(mark: .o, on: (2,0))
         try! board.place(mark: .o, on: (1,1))
         try! board.place(mark: .o, on: (0,2))
         try! board.place(mark: .x, on: (0,0))
         try! board.place(mark: .x, on: (1,2))
         
         XCTAssertTrue(game(board: board, isWonBy: .o))
         XCTAssertFalse(game(board: board, isWonBy: .x))
         
     }
 

}
