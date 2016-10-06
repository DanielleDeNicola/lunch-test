//
//  RestaurantsStore.swift
//  lunch
//
//  Created by Danielle Denicola on 10/6/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation

class RestaurantsStore {
    
    static let shared = RestaurantsStore()

    private var restaurants: [Restaurant]?

    func fetchRestaurants(handler: @escaping (([Restaurant]) -> Void)) {
        if let restaurants = restaurants {
            handler(restaurants)
            return
        }

        guard let url = URL(string: "http://sandbox.bottlerocketapps.com/BR_iOS_CodingExam_2015_Server/restaurants.json") else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
            guard let data = data, let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String : Any] else {
                return
            }
            let restaurantObjects = json["restaurants"] as? [[String : Any]] ?? []

            self.restaurants = restaurantObjects.flatMap { Restaurant(dictionary: $0) }

            handler(self.restaurants ?? [])
        }
        
        task.resume()
    }
}
