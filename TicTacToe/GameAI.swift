//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
//    var numMarks = 0
//
//    for y in 0..<3 {
//        if board[(0,y)] == player {
//            numMarks += 1
//        }
//    }
//
//    if numMarks == 3 {
//        return true
//    }
    
    // Check Verticals
    for x in 0..<3 {
        var numMarks = 0
        for y in 0..<3{
            if board[(x,y)] == player {
                numMarks += 1
            }
            
            if numMarks == 3 {
                return true
            }
        }
    }
        
    // Check Horizontals
    for y in 0..<3 {
           var numMarks = 0
           for x in 0..<3{
               if board[(x,y)] == player {
                   numMarks += 1
               }
               
               if numMarks == 3 {
                   return true
               }
           }
       }
    
    
    

    // Check Diagonals
    let leftToRight: [Coordinate] = [(0,0), (1,1), (2,2)]
    var numberOfMarks = 0
    
    for coordinate in leftToRight {
        if board[coordinate] == player {
            numberOfMarks += 1
        }
    }
    
    if numberOfMarks == 3 {
        return true
    }
    
    let rightToLeft: [Coordinate] = [(2,0), (1,1), (0,2)]
    numberOfMarks = 0
    
    for coordinate in rightToLeft {
        if board[coordinate] == player {
            numberOfMarks += 1
        }
    }
    
    if numberOfMarks == 3 {
        return true
    }

    
    
    return false
}
