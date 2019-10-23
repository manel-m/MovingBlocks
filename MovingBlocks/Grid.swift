//
//  Grid.swift
//  MovingBlocks
//
//  Created by Manel matougui on 9/30/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//
import SpriteKit
class Grid:SKSpriteNode {
    
    var rows:Int!
    var cols:Int!
    var blockSize:CGFloat!
    
    convenience init?(blockSize:CGFloat,rows:Int,cols:Int) {
        guard let texture = Grid.gridTexture(blockSize: blockSize,rows: rows, cols:cols) else {
            return nil
        }
        self.init(texture: texture, color:SKColor.clear, size: texture.size())
        self.blockSize = blockSize
        self.rows = rows
        self.cols = cols
        
        self.isUserInteractionEnabled = true
    }
    
    class func gridTexture(blockSize:CGFloat,rows:Int,cols:Int) -> SKTexture? {
        // Add 1 to the height and width to ensure the borders are within the sprite
        let size = CGSize(width: CGFloat(cols)*blockSize+1.0, height: CGFloat(rows)*blockSize+1.0)
        UIGraphicsBeginImageContext(size)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        let bezierPath = UIBezierPath()
        let offset:CGFloat = 0.5
        // Draw vertical lines
        for i in 0...cols {
            let x = CGFloat(i)*blockSize + offset
            bezierPath.move(to: CGPoint(x: x, y: 0))
            bezierPath.addLine(to: CGPoint(x: x, y: size.height))
        }
        // Draw horizontal lines
        for i in 0...rows {
            let y = CGFloat(i)*blockSize + offset
            bezierPath.move(to: CGPoint(x: 0, y: y))
            bezierPath.addLine(to: CGPoint(x: size.width, y: y))
        }
        SKColor.white.setStroke()
        bezierPath.lineWidth = 1.0
        bezierPath.stroke()
        context.addPath(bezierPath.cgPath)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return SKTexture(image: image!)
    }
    
    func gridPosition(row:Int, col:Int) -> CGPoint {
        let offset = blockSize / 2.0 + 0.5
        let x = CGFloat(col) * blockSize - (blockSize * CGFloat(cols)) / 2.0 + offset
        let y = CGFloat(rows - row - 1) * blockSize - (blockSize * CGFloat(rows)) / 2.0 + offset
        return CGPoint(x: x, y: y)
    }
    
    func toRowCol(location:CGPoint) -> CGPoint {
        let x = Int((location.x + (blockSize * CGFloat(cols)) / 2) / blockSize)
        let y = rows - 1 - Int((location.y + (blockSize * CGFloat(rows)) / 2) / blockSize)
        return CGPoint(x:x, y:y)
    }
    
    func sceneTouched(touchLocation:CGPoint) {
        let p = toRowCol(location:touchLocation)
        //print ("x: \(p.x), y: \(p.y)")
        
        if let b = GameScene.block {
            b.position = gridPosition(row: Int(p.y), col: Int(p.x))
            checkWinCondition()
        }
    }
    func checkWinCondition() {
        var gameWon = true
        enumerateChildNodes(withName: "./*", using: { node, _ in
//            print(node.name)
            let rc = self.toRowCol(location: node.position)
//            print("(\(rc.x), \(rc.y))")
            if let leftBlock = self.findBlock (row: Int(rc.y - 1), col: Int(rc.x)) {
                if leftBlock.name != node.name {
                    gameWon = false
                }
            }
            if let rightBlock = self.findBlock (row: Int(rc.y + 1), col: Int(rc.x)){
                if rightBlock.name != node.name {
                    gameWon = false
                }
            }
           
            if let upBlock = self.findBlock (row: Int(rc.y), col: Int(rc.x-1)){
                if upBlock.name != node.name {
                    gameWon = false
                }
            }
           
            if let downBlock = self.findBlock (row: Int(rc.y), col: Int(rc.x+1)){
                if downBlock.name != node.name {
                    gameWon = false
                }
            }
           
            
        })
        print(gameWon)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        sceneTouched(touchLocation: touchLocation)
    }
    
    func findBlock (row:Int,col:Int) -> BlockNode? {
        var block: BlockNode?

        let position = gridPosition(row: row, col: col)
        
        enumerateChildNodes(withName: "//*", using: { node, _ in
            if (node.position.equalTo(position)) {
                block = node as? BlockNode
            }
        })
        
        return block
    }

}
