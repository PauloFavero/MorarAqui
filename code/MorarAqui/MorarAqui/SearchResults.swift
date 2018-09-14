//
//  SearchResults.swift
//  MorarAqui
//
//  Created by Edgar Silva on 03/04/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation
import MapKit

/**
 A class to wrap the search settings and results
*/
class SearchResults {
    
    /// The term used to get a location based search
    public var term = ""
    
    /// The location coordinates to search around
    public var location: MKMapPoint?
    
    /// The distsnce in kilometer to limit the search
    public var distance = 0
    
    /// The price range (min and max) to limit the search
    public var priceRange = (min: 0.0, max: 0.0)
    
    /// An array of `HouserResult` that each position warp a `House` and their distance from `self.location`
    public var results: [HouseResult] = []
    
}
