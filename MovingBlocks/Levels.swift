//
//  Levels.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/29/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class Levels {
    static let levels: [String] = [
        "_Y___W_________Y________W",
        "FFP__FF___RR___P_PP__PFFP",
        "_Y____BRW____R__B__YFF_BW",
        "W_Y____Y___Y_FFY__YFWW__F",
        "_WY_F_YRYF_____W_YY___WR_",
        "_W_W_W_YOW____YFF____OWY_",
        "FF__W_WBO_OB____OR_OBR___",
        "YBY___Y________FBR_RF____",
        "OY__RY__R__Y_Y_RR__O_Y___",
        "___W__Y__WF___BFFRBYR_W__",
        "ORO__R__RYW___R__YW_R____",
        "_FFW___FFF___B_BB_______W",
        "F____FW__B___W_____WOBWO_",
        "___Y_______WW_RRWW___Y___",
        "_RBB__OROB_B__RR___R_BFF_",
        "B_W_OR___W____W_WRB__R_OW",
        "W_WR___B_YB__R__R_R_Y_BR_",
        "WWB___W___OO___FB___FF_WW",
        "_W___F____FF___FF__W_____",
        "_FRY_FF___Y___R____WY_W__",
        "FF__BFWWW_F_B_W__B_____B_",
        "R__Y___RO__Y_B______Y_O_B",
        "__Y_O___OY__O_RB___BB_BOR",
        "____Y___RY___R_____F__RFF",
        "_Y_WB___Y___RYYR_Y____B_W",
        "___FFORY__OR__Y________YY",
        "R___OO__B_O_B_RR____OOW_W",
        "BYO________O_YW___WF_BFFF",
        "R_R__F____FB_BWB__B_RR_RW",
        "__OB_O_Y______YB____FF__Y",
        "_F_B__FY_BBY___O__O______",
        "_R__Y__R__FR___FFR__FFR_Y",
        "_Y__RYY_O__W________R__OW",
        "Y__W__O_YWW__W_WO________",
        "____W____OO_O____O__W____",
        "_____B_RB__RO_______Y_O_Y",
        "Y__WYB_Y_YB__YBW___OO____",
        "__R__O__________BO_FB__RF",
        "__FF____FF__________Y_Y__",
        "____OW_B_R_B_____RFFOW_FF",
        "OW__WR__Y____YW_O___FF_WR",
        "WR__RR__R_OO_R___WO__OO__",
        "WY_YYW___WF__Y_FY__W_____",
        "Y__W_BYBR_RFFW____W____W_",
        "OBB_O____BBB_OO__O_______",
        "_Y_WR_WYRY_W_OWYW______OY",
        "_Y_FB__RFY_RB________Y___",
        "O____FO__YF____OYYWWY___W",
        "___R____Y_F__Y_FY___F__YR",
        "__Y____W_Y__R_W___RR_____",
        "_YBOWYRYWB_O_RY_______Y_R",
        "R_Y___R_____WY_W____YFF__",
        "_FF_B___R___B__R_O___B__O",
        "____BW___B_WWWB_FF___FW__",
        "_OR_O___FF_OO_Y_O____RY__",
        "__WW______FFO_WFWWY_FFO_Y",
        "___FF__FFFYY___R___YYR___",
        "Y_Y__YR_BYY_R___F__R_F__B",
        "R__RW____W_B_F____F_B__F_",
        "__________________FF_____",
        "____RO_Y____RW_WWYRBOWB_O",
        "_B___Y___B___Y_______OO__",
        "Y_Y__F_R_OF__RO______W_W_",
        "___R_W_B_WW_____F__RWF_B_",
        "__BO_____OB________F_O_FF",
        "__O_OBBRRW_OBW_O_O_WFFW__",
        "_W___W__RY_R____B_OB___OY",
        "__BF__Y_F______Y___YB__Y_",
        "O_B__B__R________R__O___B",
        "YR__F_Y_FF___YFRWW_WYW___",
        "__B__Y_____OOB____Y_____Y",
        "___WRR__W_W_F__RFFWW__F__",
        "__YRWWW_R___B___W___W__BY",
        "_W__F____F____W__BBB_____",
        "_______W____BF____F____WB",
        "B_W__BBOYW__YO___________",
        "__RRWRROWF_Y_YFR__O______",
        "Y_W___Y__F_W__F_______OO_",
        "BR_W__________WBR_WW_____",
        "__YR__R__B_Y__O_R_OR_B__R",
        "B_WW__O__YYY___O_WB_BOB_B",
        "__W_W__R__W__O__WR_O_W___",
        "_B_____B_F___YF__R____RY_",
        "_BB__W____YRW__RWY_YY__FF",
        "_BR__B__W____W_ROO_B_FFB_",
        "____WO_WYW_BW__W_BO____Y_",
        "______B__Y____Y___B______",
        "________W_O_O___W______FF",
        "______R______BW_B_R___W__",
        "_YY___W_B__O__B___O__W_OO",
        "_____BBOBOB_______B______",
        "B_____B__Y___B_____BFFFFY",
        "W____O_FFW____O_O______W_",
        "W_WWY____W_BRYWR__B_Y__FF",
        "______YYY__W_OY_W_____OFF",
        "RY_RW____Y_______BWW_R__B",
        "R__WW_____FW___F____R____",
        "FF__R_R_____O____OY____YR",
        "BY__W__B__W_O_W_YFF____WO",
        "_FF__RO__WO____WR_B_W__B_",
        "____OYO__O_____O_YFFYY_F_"
    ]

    static func loadLevel(grid:Grid, str: String) {
        let chars = Array(str)
        var idx = 0
        for row in 0...4 {
            for col in 0...4 {
                let char = chars[idx]
                if (char == "F") {
                    grid.addBlock(row: row, col: col, color: "black")
                } else if (char == "O") {
                    grid.addBlock(row: row, col: col, color: "orange")
                } else if (char == "B") {
                    grid.addBlock(row: row, col: col, color: "blue")
                } else if (char == "W") {
                    grid.addBlock(row: row, col: col, color: "white")
                } else if (char == "Y") {
                    grid.addBlock(row: row, col: col, color: "yellow")
                } else if (char == "P") {
                    grid.addBlock(row: row, col: col, color: "purple")
                } else if (char == "R") {
                    grid.addBlock(row: row, col: col, color: "red")
                }
                idx += 1
            }
        }
    }
    
    static func level1 (grid: Grid){
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
    }
    static func level2 (grid: Grid){
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
    }
    
    
    static func level3(grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
     
    }
    
    static func level4 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
    }
    static func level5 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 1, col: 3, color: "orange")
        grid.addBlock(row: 2, col: 1, color: "orange")
    }
    
    static func level6 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 3, col: 4, color: "black")
    }
    static func level7 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
    }
    static func level8 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    static func level9 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    static func level10 (grid: Grid) {
        grid.addBlock(row: 1, col: 0, color: "blue")
        grid.addBlock(row: 4, col: 4, color: "blue")
        grid.addBlock(row: 0, col: 1, color: "white")
        grid.addBlock(row: 3, col: 1, color: "white")
        grid.addBlock(row: 4, col: 1, color: "red")
        grid.addBlock(row: 4, col: 2, color: "red")
        grid.addBlock(row: 0, col: 3, color: "red")
        grid.addBlock(row: 3, col: 3, color: "yellow")
        grid.addBlock(row: 0, col: 4, color: "yellow")
        grid.addBlock(row: 2, col: 4, color: "purple")
        grid.addBlock(row: 2, col: 2, color: "purple")
        grid.addBlock(row: 3, col: 4, color: "black")
        grid.addBlock(row: 4, col: 3, color: "black")
    }
    
}
