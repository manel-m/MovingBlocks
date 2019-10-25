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
    
    override func didMove(to: SKView) {
        
        if let grid = Grid(blockSize: 200.0, rows:5, cols:5) {
            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            grid.name = "grid"
            addChild(grid)
            
            let gamePiece = BlockNode (imageNamed: "block-color-blue")
            //gamePiece.setScale(0.0625)
            gamePiece.position = grid.gridPosition(cell: Cell(row:1, col:0))
            gamePiece.name = "blue"
            grid.addChild(gamePiece)
            
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
            
            enumerateChildNodes(withName: "//*", using: { node, _ in
                if let eventListenerNode = node as? EventListenerNode {
                    eventListenerNode.didMoveToScene()
                }
            })
        }
    }


}
