//
//  Grid.swift
//  MovingBlocks
//
//  Created by Manel matougui on 9/30/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//
import SpriteKit
// when gamewon grid call winDelegate.gameWon(), gamewon implemented in gamescene
protocol WinCallback {
    func gameWon()
}

class Grid:SKSpriteNode {
    
    var rows:Int!
    var cols:Int!
    var blockSize:CGFloat!
    // win callback
    var winDelegate:WinCallback!
    
    // init the grid
    // add object delegate implement WinCallback protocol and put it as a delegate
    convenience init?(blockSize:CGFloat,rows:Int,cols:Int, delegate:WinCallback) {
        guard let texture = Grid.gridTexture(blockSize: blockSize,rows: rows, cols:cols) else {
            return nil
        }
        self.init(texture: texture, color:SKColor.clear, size: texture.size())
        self.blockSize = blockSize
        self.rows = rows
        self.cols = cols
        //enable user to touch grid
        self.isUserInteractionEnabled = true
        // put winDelegate delegate
        self.winDelegate = delegate
    }
    
    // create the grid
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
    // return cell position on the screen
    func gridPosition(cell:Cell) -> CGPoint {
        let offset = blockSize / 2.0 + 0.5
        let x = CGFloat(cell.col) * blockSize - (blockSize * CGFloat(cols)) / 2.0 + offset
        let y = CGFloat(rows - cell.row - 1) * blockSize - (blockSize * CGFloat(rows)) / 2.0 + offset
        return CGPoint(x: x, y: y)
    }
    // convert location (CGPoint) to cell (row,col)
    func toRowCol(location:CGPoint) -> Cell {
        let col = Int((location.x + (blockSize * CGFloat(cols)) / 2) / blockSize)
        let row = rows - 1 - Int((location.y + (blockSize * CGFloat(rows)) / 2) / blockSize)
        return Cell(row:row, col:col)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        sceneTouched(touchLocation: touchLocation)
    }
    
    func sceneTouched(touchLocation:CGPoint) {
        // convert touchLocation to cell(row, col) named: C
        let c = toRowCol(location:touchLocation)
        // if GameScene.block Named b is empty, put touchLocation named C on it
        if let b = GameScene.block {
            GameScene.block = nil
            b.position = gridPosition(cell:c)
            // call win condition function
            checkWinCondition()
        }
    }
    
    func checkWinCondition() {
        var gameWon = true
        enumerateChildNodes(withName: "./*", using: { node, _ in
//            print(node.name)
            let c = self.toRowCol(location: node.position)// convert node position to cell (row, col)
            var alone = true // node has no neighbors
            // check left block of node (c)
            if let leftBlock = self.findBlock (cell: c.left()) {// if find block on the the left ==> alone = false
                // if they don't have same color ==> game won = false
                if (leftBlock.name != node.name)  {
                    gameWon = false
                }
                alone = false
            }
            if let rightBlock = self.findBlock (cell: c.right()){
                if rightBlock.name != node.name {
                    gameWon = false
                }
                alone = false
            }
           
            if let upBlock = self.findBlock (cell: c.up()){
                if upBlock.name != node.name {
                    gameWon = false
                }
                alone = false
            }
           
            if let downBlock = self.findBlock (cell: c.down()){
                if downBlock.name != node.name {
                    gameWon = false
                }
                alone = false
            }
            // if alone = true and it's not black ==> game won = false
            if alone && (node.name != "black") {
                gameWon = false
            }
        })
        // if gameWon = true send it to win delegate
        if gameWon {
            winDelegate.gameWon()
        }
    }
    
    // check if cell countain block or no
    func findBlock (cell:Cell) -> BlockNode? {
        var block: BlockNode?
        // return cell position in the screen
        let position = gridPosition(cell:cell)
        enumerateChildNodes(withName: "//*", using: { node, _ in
            if (node.position.equalTo(position)) {
                block = node as? BlockNode
            }
        })
        return block
    }
    // add blocks in the gird 
    func addBlock(row:Int, col:Int, color:String) {
        let gamePiece = BlockNode (imageNamed: "block-color-\(color)")
        gamePiece.position = gridPosition(cell: Cell(row:row, col:col))
        gamePiece.name = color
        addChild(gamePiece)
    }

}
