//
//  GameOverScene.swift
//  Solo Mission
//
//  Created by Christophe Gauthier on 2020-03-24.
//  Copyright © 2020 Christophe Gauthier. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene{
    
    let restartLabel = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
    
    override func didMove(to view:SKView){
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let gameOverLabel = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        gameOverLabel.text = "Game Over!"
        gameOverLabel.fontSize = 150
        gameOverLabel.fontColor = SKColor.darkGray
        gameOverLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.7)
        gameOverLabel.zPosition = 1
        self.addChild(gameOverLabel)
        
        let scoreLabel = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        scoreLabel.text = "Score: \(gameScore)"
        scoreLabel.fontSize = 90
        scoreLabel.fontColor = SKColor.darkGray
        scoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.5)
        scoreLabel.zPosition = 1
        self.addChild(scoreLabel)
        
        let defaults = UserDefaults()
        var highScoreNumber = defaults.integer(forKey: "highScoreSaved")
        
        if gameScore > highScoreNumber{
            highScoreNumber = gameScore
            defaults.set(highScoreNumber, forKey: "highScoreSaved")
        }
        
        let highScoreLabel = SKLabelNode(fontNamed: "Clear Sans - Mediuf")
        highScoreLabel.text = "High Score: \(highScoreNumber)"
        highScoreLabel.fontSize = 90
        highScoreLabel.fontColor = SKColor.darkGray
        highScoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.42)
        highScoreLabel.zPosition = 1
        self.addChild(highScoreLabel)
        
        restartLabel.text = "Try Again"
        restartLabel.fontSize = 70
        restartLabel.fontColor = SKColor.darkGray
        restartLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.25)
        restartLabel.zPosition = 1
        self.addChild(restartLabel)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
         for touch: AnyObject in touches{
                   
                   let pointOfTouch = touch.location(in: self)
                   
                   if restartLabel.contains(pointOfTouch){
                       
                       let sceneToMoveTo = GameScene(size: self.size)
                       sceneToMoveTo.scaleMode = self.scaleMode
                       let myTansition = SKTransition.fade(withDuration: 0.5)
                       self.view!.presentScene(sceneToMoveTo, transition: myTansition)
                   }
        }
    }
    
}
