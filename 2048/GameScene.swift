//
//  GameScene.swift
//  2048
//
//  Created by Christophe Gauthier on 2020-04-06.
//  Copyright © 2020 Christophe Gauthier. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        

        
    }
    
    
}
