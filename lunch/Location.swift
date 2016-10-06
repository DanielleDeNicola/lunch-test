//
//  Location.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation

struct Location {
    let address: String
    let crossStreet: String
    let lat: Float
    let lng: Float
    let postalCode: String
    let cc: String
    let city: String
    let state: String
    let country: String
    let formattedAddress: [String]

    init(dictionary: [String : Any]){
        self.address = dictionary["address"] as? String ?? "No Address"
        self.crossStreet = dictionary["crossStreet"] as? String ?? "No crossStreet"
        self.lat = dictionary["lat"] as? Float ?? 0
        self.lng = dictionary["lng"] as? Float ?? 0
        self.postalCode = dictionary["postalCode"] as? String ?? "No Postal Code"
        self.cc = dictionary["cc"] as? String ?? "No cc"
        self.city = dictionary["city"] as?
            String ?? "No City"
        self.state = dictionary["state"] as? String ?? "No State"
        self.country = dictionary["country"] as? String ?? "No Country"
        self.formattedAddress = dictionary["formattedAddress"] as? [String] ?? []
    }
}
