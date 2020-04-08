//
//  GameScene.swift
//  2048
//
//  Created by Christophe Gauthier on 2020-04-06.
//  Copyright © 2020 Christophe Gauthier. All rights reserved.
//

import SpriteKit
import GameplayKit

var gameScore = 0

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        gameScore = 0
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let bigPP = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        bigPP.text = "U have big pp"
        bigPP.fontSize = 50
        bigPP.fontColor = SKColor.darkGray
        bigPP.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.78)
        bigPP.zPosition = 1
        self.addChild(bigPP)

        
    }
    
    
}
