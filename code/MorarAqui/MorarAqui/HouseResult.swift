//
//  HouseResult.swift
//  MorarAqui
//
//  Created by Edgar Silva on 03/04/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

/**
 A wrap for a house in a result for search
 */
class HouseResult {
    
    /// The distance from the main search
    public var distance: Int = 0
    
    /// The house found
    weak public var house: House!
    
    /**
      Initializer
      - parameter distance: The distance from the main location
      - parameter house:    The `House` found
     */
    init(distance: Int, house: House) {
        self.distance = distance
        self.house = house
    }
}
