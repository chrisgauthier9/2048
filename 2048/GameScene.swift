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
    

    
    
    let gameSquare = SKSpriteNode(imageNamed: "backgroundSquare")
    
    let gameArea: CGRect

        override init(size: CGSize) {
            gameArea = CGRect(x: gameSquare.size.width/2, y: 0, width: gameSquare.size.width, height: gameSquare.size.height)

        super.init(size: size)
        }
    
    required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    
    
    let square2 = SKSpriteNode(imageNamed: "square2")

    
    
    
    
    
    
    func random() ->  CGFloat {
        return CGFloat(Float(arc4random())) / 0xFFFFFFFF
    }
    func random(min:  CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
    
    
    
    override func didMove(to view: SKView) {
        
        
        
        let areaBlank = SKSpriteNode(imageNamed: "squareBlank")
        areaBlank.setScale(1)
        areaBlank.zPosition = 3
        areaBlank.position =  CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        self.addChild(areaBlank)
        
        let area1 = CGRect(x: gameArea.size.width/2, y: gameArea.size.width/2, width: areaBlank.size.width, height: areaBlank.size.height)
        
        
        
        
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.5)
        background.zPosition = 0
        self.addChild(background)

        gameSquare.setScale(1)
        gameSquare.position =  CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        gameSquare.zPosition = 1
        self.addChild(gameSquare)
        
        let currentScore = SKSpriteNode(imageNamed: "scoreRectangle")
        currentScore.setScale(1)
        currentScore.position =  CGPoint(x: self.size.width*0.50, y: self.size.height*0.65)
        currentScore.zPosition = 2
        self.addChild(currentScore)
        
        let highScore = SKSpriteNode(imageNamed: "scoreRectangle")
        highScore.setScale(1)
        highScore.position =  CGPoint(x: self.size.width*0.80, y: self.size.height*0.65)
        highScore.zPosition = 2
        self.addChild(highScore)
        
        
        square2.setScale(1)
        square2.zPosition = 5
        
        
        
        
        
        spawnSquares()
        
        
        
    }
    
    
    
    
    func spawnSquares() {
        
        let randomSpawnSwitch = 1              //random(min: 1, max: 1)
        var spawnPoint = CGPoint(x: 0, y: 0)
    
        
        for randomSpawnSwitch in 1...16 {
        
        switch randomSpawnSwitch {
        case 1: spawnPoint = CGPoint(x: self.size.width*0.204, y: self.size.height*0.538)
        case 2: spawnPoint = CGPoint(x: self.size.width*0.4, y: self.size.height*0.538)
        case 3: spawnPoint = CGPoint(x: self.size.width*0.6, y: self.size.height*0.538)
        case 4: spawnPoint = CGPoint(x: self.size.width*0.796, y: self.size.height*0.538)
        case 5: spawnPoint = CGPoint(x: self.size.width*0.204, y: self.size.height*0.446)
        case 6: spawnPoint = CGPoint(x: self.size.width*0.4, y: self.size.height*0.446)
        case 7: spawnPoint = CGPoint(x: self.size.width*0.6, y: self.size.height*0.446)
        case 8: spawnPoint = CGPoint(x: self.size.width*0.796, y: self.size.height*0.446)
        case 9: spawnPoint = CGPoint(x: self.size.width*0.204, y: self.size.height*0.355)
        case 10: spawnPoint = CGPoint(x: self.size.width*0.4, y: self.size.height*0.355)
        case 11: spawnPoint = CGPoint(x: self.size.width*0.6, y: self.size.height*0.355)
        case 12: spawnPoint = CGPoint(x: self.size.width*0.796, y: self.size.height*0.355)
        case 13: spawnPoint = CGPoint(x: self.size.width*0.204, y: self.size.height*0.264)
        case 14: spawnPoint = CGPoint(x: self.size.width*0.4, y: self.size.height*0.264)
        case 15: spawnPoint = CGPoint(x: self.size.width*0.6, y: self.size.height*0.264)
        default:
            spawnPoint = CGPoint(x: self.size.width*0.796, y: self.size.height*0.264)
        }
        
        square2.position = spawnPoint
        self.addChild(square2)

        }
    }
    
    
    
    
    
    func touchesMoved() {
        
    }
    
    
    
    func swipeLeft() {
        
    }
    
    func swipeUp() {
        
    }
    
    func swipeRight() {
        
    }
    
    func swipeDown() {
        
    }
    
}
