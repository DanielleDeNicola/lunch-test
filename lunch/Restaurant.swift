//
//  Restaurant.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation

struct Restaurant {
    let location: Location?
    let contact: Contact?
    let name: String
    let backgroundImageURL: URL?
    let category: String

    init?(dictionary: [String : Any]) {
        self.name = dictionary["name"] as? String ?? "No Name"
        if let urlString = dictionary["backgroundImageURL"] as? String {
            self.backgroundImageURL = URL(string: urlString)
        } else {
            self.backgroundImageURL = nil
        }
        self.category = dictionary["category"] as? String ?? "No Category"

        if let locationDictionary = dictionary["location"] as? [String : Any] {
            self.location = Location(dictionary: locationDictionary)
        } else {
            self.location = nil
        }

        if let contactDictionary =
            dictionary["contact"] as?
                [String: Any] {
            self.contact = Contact(dictionary: contactDictionary)
        } else {
            self.contact = nil
        }

    }
}
