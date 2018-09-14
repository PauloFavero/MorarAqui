//
//  HouseService.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

class HouseService {
    
    let model = HouseModel()
    
    /**
     
     Perform a search on the webservice retrieving the vacancies in houses localized on a dinstance from the term.
    
     - parameter term: A location or university to search on map
     - parameter distance: The distance in kilometeres to limit the search
     - parameter priceRange: A min and max tuple to limit the search
     
     - returns object: Return a `SearchResults` instance with the search performed and their results
     
     */
        
    public func search(term: String, distance: Int, priceRange: (min: Double, max: Double)) -> SearchResults {
        return self.model.search(term: term, distance: distance, priceRange: priceRange)
        
    }
    
    /**
     
     Insert a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func insert(_ house: House) -> Bool {
        self.model.insert(house)
        return true
    }
    
    /**
     
     Update a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func update(_ house: House, updatePhotos: Bool) -> Bool {
        return self.model.update(house)
    }
    
    /**
     
     Delete a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func delete(_ house: House) -> Bool {
        return self.model.delete(house)
    }
    
    /**
     
     Get a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func get(id: Int) -> House? {
        return self.model.get(id)
    }
    
    
}
