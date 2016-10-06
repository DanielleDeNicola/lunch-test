//
//  Contact.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation

struct Contact {
    let phone: String
    let formattedPhone: String
    let twitter: String?

    var formattedTwitterHandle: String? {
        guard let handle = twitter else {
            return nil
        }

        return "@" + handle
    }

    init?(dictionary: [String : Any]) {
        self.phone = dictionary["phone"] as? String ?? ""
        self.formattedPhone = dictionary["formattedPhone"] as? String ?? "No Phone"
        self.twitter = dictionary["twitter"] as? String 
    }

}
