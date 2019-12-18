//
//  MusicButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/17/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class MusicButton : SKSpriteNode {
    static var musicPaused = false
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        let texture1 = SKTexture(imageNamed: "btn-music")
        let texture2 = SKTexture(imageNamed: "btn-music-off")
        if MusicButton.musicPaused {
            SKTAudio.sharedInstance().resumeBackgroundMusic()
            self.texture = texture1
            MusicButton.musicPaused = false
        } else {
            SKTAudio.sharedInstance().pauseBackgroundMusic()
            self.texture = texture2
            MusicButton.musicPaused = true
        }
        
        
        
        
}
}
