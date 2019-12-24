//
//  LabelNode.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/19/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class LabelNode: SKLabelNode  {
    convenience init(message: String) {
        self.init(fontNamed: "MarkerFelt-Thin")
        text = message
        fontSize = 120.0
        fontColor = SKColor.white
        zPosition = 100
        let front = SKLabelNode(fontNamed: "MarkerFelt-Thin")
        front.text = message
        front.fontSize = 120.0
        front.fontColor = SKColor.purple
        front.position = CGPoint(x: -2, y: -2)
        addChild(front)
}
}
