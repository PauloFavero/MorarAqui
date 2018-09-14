//
//  HousePhoto.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

/**
 The house photo
 */
class HousePhoto {
    
    /// The photo id
    public var id = 0
    
    /// The photo url
    public var url: String
    
    /// The house parent
    public weak var house: House!
    
    init(id: Int, url: String, house: House) {
        self.id = id
        self.url = url
        self.house = house
    }
    
}
