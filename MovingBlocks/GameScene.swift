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

struct PhysicsCategory {
    // static let None:  UInt32 = 0
    static let Label:   UInt32 = 0// 1
    static let Edge: UInt32 = 0b1 // 2
    //    static let Edge: UInt32 = 0b1000 // 8
    //    static let Label: UInt32 = 0b10000 // 16
}

class GameScene: SKScene, WinCallback , SKPhysicsContactDelegate {
    static var block: BlockNode!
    static var currentLevel: Int = 1

    var lastTouchLocation : CGPoint?

    static func loadLevel(grid: Grid) {
        if currentLevel == 1 {
            Levels.level1(grid: grid)
        } else if currentLevel == 2 {
            Levels.level2(grid: grid)
        } else if currentLevel == 3 {
            Levels.level3(grid: grid)
        } else if currentLevel == 4 {
            Levels.level4(grid: grid)
        }
        else if currentLevel == 5 {
            Levels.level5(grid: grid)
        } else if currentLevel == 6 {
            Levels.level6(grid: grid)
        } else if currentLevel == 7 {
            Levels.level7(grid: grid)
        } else if currentLevel == 8 {
            Levels.level8(grid: grid)
        } else if currentLevel == 9 {
            Levels.level9(grid: grid)
        } else if currentLevel == 10 {
            Levels.level10(grid: grid)
        }
    }


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
        // Calculate playable margin
        let maxAspectRatio: CGFloat = 16.0/9.0
        let maxAspectRatioHeight = size.width / maxAspectRatio
        let playableMargin: CGFloat = (size.height
            - maxAspectRatioHeight)/2
        let playableRect = CGRect(x: 0, y: playableMargin,
                                  width: size.width, height: size.height-playableMargin*2)
        physicsBody = SKPhysicsBody(edgeLoopFrom: playableRect)
        physicsWorld.contactDelegate = self
        physicsBody!.categoryBitMask = PhysicsCategory.Edge
        
        SKTAudio.sharedInstance().playBackgroundMusic("backgroundMusic.mp3")
    }

    func gameWon() {
        run(SKAction.afterDelay(3, runBlock: newGame))
        inGameMessage(text: "Nice job!")
        SKTAudio.sharedInstance().pauseBackgroundMusic()
        SKTAudio.sharedInstance().playSoundEffect("win.wav")
    }
    
    func newGame() {
        GameScene.currentLevel += 1
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view!.presentScene(scene)
        }
    }
    
    func inGameMessage(text: String) {
        let message = MessageNode(message: text)
        message.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(message)
    }

}
