//
//  WhackSlot.swift
//  WhackAGopher
//
//  Created by Daiki Nakashita on 11/8/16.
//  Copyright © 2016 Daiki Nakashita. All rights reserved.
//

import UIKit
import SpriteKit

class WhackSlot: SKNode {
    var isVisible = false
    var isHit = false
    var charNode: SKSpriteNode!
    
    func configure(at position: CGPoint) {
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        cropNode.maskNode = nil
        //cropNode.maskNode = SKSpriteNode(imageNamed: "whackMask")
        
        charNode = SKSpriteNode(imageNamed: "gopher")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        cropNode.addChild(charNode)
        
        addChild(cropNode)
    }
}
