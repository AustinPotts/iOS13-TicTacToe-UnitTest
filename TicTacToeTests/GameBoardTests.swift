//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Austin Potts on 2/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

// To access resources from our app
@testable import TicTacToe

// Unit can check in future if assumptions are correct
// Catch Bugs

class GameBoardTests: XCTestCase {


    func testCreatingEmptyBoard(){
        var board = GameBoard()
      
        // This will cause the test to fail since we are placing a mark
      try! board.place(mark: .o, on: (x: 0, y: 0))
        
        
        // Test that these are empty marks
        XCTAssertNil(board[(x: 0, y:0)])
        XCTAssertNil(board[(x: 1, y:0)])
        XCTAssertNil(board[(x: 2, y:1)])
        XCTAssertNil(board[(x: 1, y:1)])
        XCTAssertNil(board[(x: 2, y:1)])
        XCTAssertNil(board[(x: 0, y:2)])
        XCTAssertNil(board[(x: 1, y:2)])
        XCTAssertNil(board[(x: 2, y:2)])
        
        for x in 0..<3 {
            for y in 0..<3 {
                XCTAssertNil(board[(x,y)], "The entry at (\(x)), \(y)")
            }
        }
    }
    
    
    func testPlacingMArks(){
        
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (0,0)))
        XCTAssertEqual(board[(0,0)], .o)
        XCTAssertNoThrow(try board.place(mark: .x, on: (2,2)))
        XCTAssertEqual(board[(2,2)], .x)
        
        for x in 0..<3 {
            for y in 0..<3 {
                
                if x == 0, y == 0 {continue}
                 if x == 2, y == 2 {continue}
                
                    XCTAssertNil(board[(x,y)], "The entry at (\(x)), \(y)")
            }
        }
        
        XCTAssertThrowsError(try board.place(mark: .x, on: (0,0))) { error in
            XCTAssertEqual(error as? GameBoardError, GameBoardError.invalidSquare)
        }
        
    }
    
    func testIsFull() {
        
        var board = GameBoard()
        
        XCTAssertFalse(board.isFull)
        
        try! board.place(mark: .x, on: (0,0))
        
        XCTAssertFalse(board.isFull)
        
//         try! board.place(mark: .x, on: (0,0))
         try! board.place(mark: .o, on: (1,0))
         try! board.place(mark: .x, on: (2,1))
         try! board.place(mark: .o, on: (1,1))
//         try! board.place(mark: .x, on: (2,1))
         try! board.place(mark: .o, on: (0,2))
         try! board.place(mark: .x, on: (1,2))
         try! board.place(mark: .x, on: (2,2))
        
        XCTAssertTrue(board.isFull)
        
        
        
        
    }
    
    
    
    
}
