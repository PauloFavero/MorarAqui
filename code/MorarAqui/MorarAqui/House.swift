//
//  House.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

/**
 The gender restriction of the people that lives in a house
 */
enum HouseGender {
    case mixed
    case female
    case male
    case undefined
}

/**
 A house, that have vacancies and photos
 */
class House {
    
    /// The house id
    public var id:Int = 0
    
    /// The house name
    public var name:String = ""
    
    /// The gender classification
    public var gender:HouseGender = HouseGender.undefined
    
    /// The house address
    public var address:String = ""
    
    /// The city that the house is located
    public var city:String = ""
    
    /// The state that the house is located
    public var state:String = ""
    
    /// The country that the ghouse is located
    public var country:String = ""
    
    /// The house description
    public var description:String = ""
    
    /// Wheter the house is active or not
    public var active:Bool = false
    
    /// The `User` owner
    public var user: User!
    
    /// The latitude position
    public var latitude:Double = 0.0
    
    /// The longitude position
    public var longitude:Double = 0.0
    
    /// Vacancies on the houses
    public var vacancies: [Vacancy] = []
    
    /// The House Photos
    public var photos: [HousePhoto] = []
    
    
    init(_ id:Int, _ name: String,_ price:Double, _ address:String, _ city:String, _ state: String, _ country:String, _ description:String, _ latitude:Double, _ longitude:Double){
        
        /// MARK: This is temporary
        self.id = id
        self.name = name
        self.gender = .mixed
        self.address = address
        self.city = city
        self.state = state
        self.country = country
        self.description = description
        self.active = true
        self.latitude = latitude
        self.longitude = longitude
        
        let vacancy = Vacancy(id: 1, quantity: 1, price: price, capacity: 1, house: self)
        
        self.vacancies.append(vacancy)
        
        let photo = HousePhoto(id: 1, url: "https://s-media-cache-ak0.pinimg.com/736x/73/de/32/73de32f9e5a0db66ec7805bb7cb3f807.jpg", house: self)
        
        self.photos.append(photo)
        
    }
}
