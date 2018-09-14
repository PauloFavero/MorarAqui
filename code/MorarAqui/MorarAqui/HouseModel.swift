//
//  HouseModel.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

class HouseModel {
    
    
    var allHouse:[House] = []
    
    init() {
        
        self.allHouse.append(House(1,"MansãoSergião",999999, "Rua Pindamonhangaba, 123", "Campinas", "São Paulo", "Brasil", "A melhor morada do Brasil", 0.998, 0.988 ))
        self.allHouse.append(House(2,"Maloca",1, "Rua Saudosa, 249", "Campinas", "São Paulo", "Brasil", "Um palacete abandonado e ocupado", 0.998, 0.988 ))
        self.allHouse.append(House(3,"Mansão da Janis",1000, "Rua Hippie, 221", "Campinas", "São Paulo", "Brasil", "", 0.998, 0.988 ))
        self.allHouse.append(House(4,"Mansão do Hendrix ",3000, "Rua Heroin, 999", "Campinas", "São Paulo", "Brasil", "", 0.998, 0.988 ))
        self.allHouse.append(House(5,"Eddie's House",666, "Rua Tropper, 666", "Campinas", "São Paulo", "Brasil", "", 0.998, 0.988 ))
        self.allHouse.append(House(6,"Casa do Tom ",0,"Rua CCCP, 333", "Campinas", "São Paulo", "Brasil", "", 0.998, 0.999 ))
    }
    
    public func insertHouseInDB(id:Int, name:String, price:Double, address:String, number: Int, city:String, state:String, country:String, description:String, latitude:Double, longitude:Double){
        
        self.allHouse.append(House(id, name, price, address, city, state, country, description, latitude, longitude))
        
        
    }
    
    /**
     
     Insert a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func insert(_ house: House) {
        self.allHouse.append(house)
    }
    
    /**
     
     Update a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func update(_ house: House) -> Bool {
        
        for i in 0 ..< self.allHouse.count {
            if self.allHouse[i].id == house.id {
                self.allHouse[i] = house
                return true
            }
        }
        
        return false
        
    }
    
    /**
     
     Update a house
     
     - parameter house: A `House` object
     
     - returns: true if the insertion was ok or false on error
     */
    public func delete(_ house: House) -> Bool {
        
        for i in 0 ..< self.allHouse.count {
            if self.allHouse[i].id == house.id {
                self.allHouse.remove(at: i)
                return true
            }
        }
        
        return false
        
    }
    
    /**
     
     Update a house
     
     - parameter id: A house idt
     
     - returns: A `House` instance if found or nil
     */
    public func get(_ id: Int) -> House? {
        
        for i in 0 ..< self.allHouse.count {
            if self.allHouse[i].id == id {
                return self.allHouse[i]
            }
        }
        
        return nil
        
    }
    
    /**
     
     Perform a search on the webservice retrieving the vacancies in houses localized on a dinstance from the term.
     
     - parameter term: A location or university to search on map
     - parameter distance: The distance in kilometeres to limit the search
     - parameter priceRange: A min and max tuple to limit the search
     
     - returns object: Return a `SearchResults` instance with the search performed and their results
     
     */
    public func search(term: String, distance: Int, priceRange: (min: Double, max: Double)) -> SearchResults {
        
        ///TODO: Make this real
        
        let result = SearchResults()
        
        result.term = term
        result.distance = distance
        result.priceRange = priceRange
    
        for house in allHouse {
            result.results.append(HouseResult(distance: 0, house: house))
        }
        
        return result
        
    }
    
}



