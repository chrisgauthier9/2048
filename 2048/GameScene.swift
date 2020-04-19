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
    
    
    let gameArea = SKSpriteNode(imageNamed: "backgroundSquare")
    
    override func didMove(to view: SKView) {
        
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.5)
        background.zPosition = 0
        self.addChild(background)
 
        gameArea.setScale(1)
        gameArea.position =  CGPoint(x: self.size.width*0.5, y: self.size.height*0.3)
        gameArea.zPosition = 1
        self.addChild(gameArea)
        
        
        
        
        

        
    }
    
    
}
