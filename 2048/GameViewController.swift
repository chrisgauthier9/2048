//
//  GameViewController.swift
//  2048
//
//  Created by Christophe Gauthier on 2020-04-06.
//  Copyright © 2020 Christophe Gauthier. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
                if let view = self.view as! SKView? {

                    // Load the SKScene from 'GameScene.sks'
                    let scene = MainMenuScene(size: CGSize(width: 1125, height: 2436))

                        // Set the scale mode to scale to fit the window
                        scene.scaleMode = .aspectFill
                        
                        // Present the scene
                        view.presentScene(scene)
                    
                    view.ignoresSiblingOrder = true
                    view.showsFPS = false
                    view.showsNodeCount = false
                }
            }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
