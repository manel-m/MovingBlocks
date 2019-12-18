//
//  Levels.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/29/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class Levels {
    
//    static func level(grid:Grid) {
//        var levelStr: [String] = [
//            "__F__",
//            "__F__",
//            "O_F__",
//            "O__BB",
//            "OO___"
//        ]
//        
//        for row in 0...4 {
//            let rowStr = levelStr[row]
//            var col = 0
//            for char in rowStr {
//                if (char == "F") {
//                    grid.addBlock(row: row, col: col, color: "black")
//                } else if (char == "O") {
//                    grid.addBlock(row: row, col: col, color: "orange")
//                } else if (char == "B") {
//                    grid.addBlock(row: row, col: col, color: "blue")
//                }
//                col += 1
//            }
//        }
//    }
//    
    static func level1 (grid: Grid){
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
    }
    static func level2 (grid: Grid){
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
    }
    
    
    static func level3(grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
     
    }
    
    static func level4 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
    }
    static func level5 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 1, col: 3, color: "orange")
        grid.addBlock(row: 2, col: 1, color: "orange")
    }
    
    static func level6 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 3, col: 4, color: "black")
    }
    static func level7 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
    }
    static func level8 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    static func level9 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    static func level10 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    
}
