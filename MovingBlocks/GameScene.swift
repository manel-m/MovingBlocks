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

class GameScene: SKScene, WinCallback {
    static var block: BlockNode!
    static var currentLevel: Int = 0

    var lastTouchLocation : CGPoint?

    static func loadLevel(grid: Grid) {
        if currentLevel == 0 {
            grid.addBlock(row: 1, col: 0, color: "blue")
            grid.addBlock(row: 0, col: 1, color: "white")
            grid.addBlock(row: 4, col: 1, color: "red")
            grid.addBlock(row: 4, col: 2, color: "red")
            grid.addBlock(row: 0, col: 3, color: "red")
            grid.addBlock(row: 4, col: 4, color: "blue")
            grid.addBlock(row: 3, col: 1, color: "white")
        } else if currentLevel == 1 {
            grid.addBlock(row: 1, col: 0, color: "blue")
            grid.addBlock(row: 0, col: 1, color: "white")
            grid.addBlock(row: 4, col: 1, color: "red")
            grid.addBlock(row: 4, col: 2, color: "red")
            grid.addBlock(row: 0, col: 3, color: "red")
            grid.addBlock(row: 4, col: 4, color: "blue")
            grid.addBlock(row: 3, col: 1, color: "white")
            grid.addBlock(row: 3, col: 3, color: "yellow")
            grid.addBlock(row: 0, col: 4, color: "yellow")
            grid.addBlock(row: 2, col: 4, color: "purple")
            grid.addBlock(row: 2, col: 2, color: "purple")
            grid.addBlock(row: 3, col: 4, color: "black")
        }
    }
//    func level1(_ grid:Grid) {
//        grid.addBlock(row: 1, col: 0, color: "blue")
//        grid.addBlock(row: 0, col: 1, color: "white")
//    }

    override func didMove(to: SKView) {
        
        if let grid = Grid(blockSize: 200.0, rows:5, cols:5, delegate: self) {
            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            grid.name = "grid"
            addChild(grid)
            
            GameScene.loadLevel(grid: grid)
            
            enumerateChildNodes(withName: "//*", using: { node, _ in
                if let eventListenerNode = node as? EventListenerNode {
                    eventListenerNode.didMoveToScene()
                }
            })
        }
    }

    func gameWon() {
        GameScene.currentLevel += 1
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view!.presentScene(scene)
        }
    }

}
