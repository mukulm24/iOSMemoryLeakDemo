//
//  Avenger.swift
//  Avengers
//
//  Created by Mukul More on 03/01/20.
//  Copyright © 2020 Mukul More. All rights reserved.
//

import Foundation


struct Avenger {
    
    var name : String
    var imageName : String
    
    
    static func createAvengersList() -> [Avenger]{
        let spiderMan = Avenger(name: "Spider Man", imageName: "spider_man")
        let ironMan = Avenger(name: "Iron Man", imageName: "iron_man")
        let captainAmerica = Avenger(name: "Captain America", imageName: "captain_america")
        let antMan = Avenger(name: "Ant Man", imageName: "ant_man")
        let blackWidow = Avenger(name: "Black Widow", imageName: "black_widow")
        return [ironMan,captainAmerica,spiderMan,antMan,blackWidow]
    }
}
