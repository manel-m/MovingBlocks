//
//  PrevLevelButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/23/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class PrevLevelButton : SKSpriteNode {
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        if LevelsScene.firstLevel - 20 > 0 {
            if let levels = SKScene(fileNamed: "LevelsSelector"){
                LevelsScene.firstLevel = LevelsScene.firstLevel - 20

                // Set the scale mode to scale to fit the window
                levels.scaleMode = .aspectFill
                // Present the scene
                scene?.view?.presentScene(levels)
            }
        }
        
    }
}
