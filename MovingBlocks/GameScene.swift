//
//  GameScene.swift
//  MovingBlocks
//
//  Created by Manel matougui on 9/26/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
import GameplayKit

protocol EventListenerNode {
    func didMoveToScene()
}

protocol InteractiveNode {
    func interact()
}

class GameScene: SKScene {
    static var block: BlockNode!
    
    var lastTouchLocation : CGPoint?
    
    func addBlock(grid:Grid, row:Int, col:Int, color:String) {
        let gamePiece = BlockNode (imageNamed: "block-color-\(color)")
        gamePiece.position = grid.gridPosition(cell: Cell(row:row, col:col))
        gamePiece.name = color
        grid.addChild(gamePiece)
    }
    
    override func didMove(to: SKView) {
        
        if let grid = Grid(blockSize: 200.0, rows:5, cols:5) {
            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            grid.name = "grid"
            addChild(grid)
            
            addBlock(grid: grid, row: 1, col: 0, color: "blue")
            
            let gamePiece1 = BlockNode(imageNamed: "block-color-white")
            //gamePiece.setScale(0.0625)
            gamePiece1.position = grid.gridPosition(cell: Cell(row: 0, col: 1))
            gamePiece1.name = "white"
            grid.addChild(gamePiece1)
            
            let gamePiece2 = BlockNode (imageNamed: "block-color-red")
            gamePiece2.position = grid.gridPosition(cell: Cell(row: 4, col: 1))
            gamePiece2.name = "red"
            grid.addChild(gamePiece2)
            
            let gamePiece3 = BlockNode (imageNamed: "block-color-red")
            gamePiece3.position = grid.gridPosition(cell: Cell(row: 4, col: 2))
            gamePiece3.name = "red"
            grid.addChild(gamePiece3)
            
            let gamePiece4 = BlockNode (imageNamed: "block-color-red")
            gamePiece4.position = grid.gridPosition(cell: Cell(row: 0, col: 3))
            gamePiece4.name = "red"
            grid.addChild(gamePiece4)
            
            let gamePiece5 = BlockNode (imageNamed: "block-color-blue")
            gamePiece5.position = grid.gridPosition(cell: Cell(row: 4, col: 4))
            gamePiece5.name = "blue"
            grid.addChild(gamePiece5)
            
            let gamePiece6 = BlockNode(imageNamed: "block-color-white")
            gamePiece6.position = grid.gridPosition(cell: Cell(row: 3, col: 1))
            gamePiece6.name = "white"
            grid.addChild(gamePiece6)
            
            let gamePiece7 = BlockNode(imageNamed: "block-color-yellow")
            gamePiece7.position = grid.gridPosition(cell: Cell(row: 3, col: 3))
            gamePiece7.name = "yellow"
            grid.addChild(gamePiece7)
            
            let gamePiece8 = BlockNode(imageNamed: "block-color-yellow")
            gamePiece8.position = grid.gridPosition(cell: Cell(row: 0, col: 4))
            gamePiece8.name = "yellow"
            grid.addChild(gamePiece8)
            
            let gamePiece9 = BlockNode(imageNamed: "block-color-purple")
            gamePiece9.position = grid.gridPosition(cell: Cell(row:2, col: 4))
            gamePiece9.name = "purple"
            grid.addChild(gamePiece9)
            
            let gamePiece10 = BlockNode(imageNamed: "block-color-purple")
            gamePiece10.position = grid.gridPosition(cell: Cell(row:2, col: 2))
            gamePiece10.name = "purple"
            grid.addChild(gamePiece10)
            
//            let gamePiece11 = BlockNode(imageNamed: "block-color-orange")
//            gamePiece11.position = grid.gridPosition(cell: Cell(row:2, col: 0))
//            gamePiece11.name = "orange"
//            grid.addChild(gamePiece11)
//            
//            let gamePiece12 = BlockNode(imageNamed: "block-color-orange")
//            gamePiece12.position = grid.gridPosition(cell: Cell(row:4, col: 0))
//            gamePiece12.name = "orange"
//            grid.addChild(gamePiece12)
            
            let gamePiece13 = BlockNode(imageNamed: "block-color-black")
            gamePiece13.position = grid.gridPosition(cell: Cell(row:3, col: 4))
            gamePiece13.name = "black"
            gamePiece13.isUserInteractionEnabled = false
            grid.addChild(gamePiece13)
            
            
            
            enumerateChildNodes(withName: "//*", using: { node, _ in
                if let eventListenerNode = node as? EventListenerNode {
                    eventListenerNode.didMoveToScene()
                }
            })
        }
    }


}
