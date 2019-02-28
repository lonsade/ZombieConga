//
//  GameViewController.swift
//  TestGame
//
//  Created by Nikita Zhudin on 28/02/2019.
//  Copyright © 2019 Nikita Zhudin. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let skView = view as! SKView? else {
            return
        }
        
        let scene = GameScene(size: CGSize(width: 2048, height: 1536))
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
