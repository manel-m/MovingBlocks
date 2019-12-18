//
//  BlockNode.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/9/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//


import SpriteKit

class BlockNode: SKSpriteNode , EventListenerNode {
    // call it in Gamescene.didMove
    func didMoveToScene() {
        if name != "black" {
            isUserInteractionEnabled = true
        }
    }
    
    // sritekit will call this method when player touchs block
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        print("block touches began")
        // check if it's the first touch
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        sceneTouched(touchLocation: touchLocation)
    }
 // keep reference to the touched block to find it when player touches the scene
    func sceneTouched(touchLocation:CGPoint) {
        print("block scene touched")
        GameScene.block = self
    }
}
