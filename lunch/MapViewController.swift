//
//  MapViewController.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    @IBAction func didTapDoneButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    var restaurants = [Restaurant]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if restaurants.isEmpty {
            RestaurantsStore.shared.fetchRestaurants(handler: { (restaurants) in
                self.restaurants = restaurants
            })
        }

        for restaurant in restaurants {
            let annotation = RestaurantAnnotation(restaurant: restaurant)
            mapView.addAnnotation(annotation)
        }

         mapView.showAnnotations(mapView.annotations, animated: false)
        
    }



}
