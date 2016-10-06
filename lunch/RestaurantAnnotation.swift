//
//  RestaurantAnnotation.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation
import MapKit
class RestaurantAnnotation: NSObject, MKAnnotation  {

    let restaurant: Restaurant

    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }

    var title: String? {
        return restaurant.name
    }
    var subtitle: String? {
        return restaurant.category
    }
    var coordinate: CLLocationCoordinate2D {
        guard let latitude = restaurant.location?.lat, let longitude = restaurant.location?.lng  else{
                return kCLLocationCoordinate2DInvalid
        }

        return CLLocationCoordinate2D(latitude: CLLocationDegrees(latitude), longitude: CLLocationDegrees(longitude))
    }

}
