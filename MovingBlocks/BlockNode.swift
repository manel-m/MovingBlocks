//
//  BlockNode.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/9/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//


import SpriteKit
class BlockNode: SKSpriteNode , EventListenerNode {
    func didMoveToScene() {
        isUserInteractionEnabled = true
//        zPosition = 10
    }

    func sceneTouched(touchLocation:CGPoint) {
//        print("block scene touched")
        GameScene.block = self
    }

    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
//        print("block touches began")
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        sceneTouched(touchLocation: touchLocation)
    }
 
}
