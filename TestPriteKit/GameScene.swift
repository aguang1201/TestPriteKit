//
//  GameScene.swift
//  TestPriteKit
//
//  Created by Mrzhou on 16/7/6.
//  Copyright (c) 2016年 Mrzhou. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let planeTexture = SKTexture(imageNamed: "Spaceship")
    var plane:SKSpriteNode!
    var isTouch = false
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        plane = SKSpriteNode(texture: planeTexture)
        plane.position = CGPointMake(size.width * 0.5, size.height * 0.5)
        plane.yScale = 0.5
        plane.xScale = 0.5
        plane.setScale(0.5)
        plane.name = "plane"
        addChild(plane)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let node = self.nodeAtPoint(location)
            if node.name == "plane"{
                isTouch = true
            }
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
