//
//  SoundButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class SoundButton : SKSpriteNode {
    static var SoundPaused = false
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        let texture1 = SKTexture(imageNamed: "btn-sound")
        let texture2 = SKTexture(imageNamed: "btn-sound-off")
        if SoundButton.SoundPaused {
            self.texture = texture1
            MusicButton.musicPaused = false
            print("sound off")
        } else {
            //SKTAudio.sharedInstance().playSoundEffect("win.wav")
            self.texture = texture2
            MusicButton.musicPaused = true
            print("sound on")
        }
    }
}
