//
//  MainMenu.swift
//  2048
//
//  Created by Christophe Gauthier on 2020-04-07.
//  Copyright © 2020 Christophe Gauthier. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene{
    
    override func didMove(to view: SKView){
       
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.5)
        background.zPosition = 0
        self.addChild(background)
        
        let newGame = SKSpriteNode(imageNamed: "New Game")
        newGame.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.5)
        newGame.zPosition = 2
        self.addChild(newGame)
        
        let gameBy = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        gameBy.text = "By Chris and Thea"
        gameBy.fontSize = 50
        gameBy.fontColor = SKColor.darkGray
        gameBy.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.15)
        gameBy.zPosition = 1
        self.addChild(gameBy)
        
        let gameTitle = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        gameTitle.text = "2048"
        gameTitle.fontSize = 200
        gameTitle.fontColor = SKColor.darkGray
        gameTitle.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.78)
        gameTitle.zPosition = 1
        self.addChild(gameTitle)
        
        
        
    
    }
        

}
