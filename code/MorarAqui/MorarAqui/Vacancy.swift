//
//  Vacancy.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

/**
 A vacancy in a house representation
 */
class Vacancy {
    
    /// The vacancy id
    public var id = 0
    
    /// Quantity if free spots
    public var quantity  = 0
    
    /// Price per spot
    public var price = 0.0
    
    /// Total of spots
    public var capacity = 0
    
    /// The house parent
    public weak var house: House!
    
    init (id: Int, quantity: Int, price: Double, capacity: Int, house: House) {
        
        self.id = id
        self.quantity = quantity
        self.price = price
        self.capacity = capacity
        self.house = house
        
    }
}
