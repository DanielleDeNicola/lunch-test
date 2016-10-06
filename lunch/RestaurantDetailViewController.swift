//
//  RestaurantsDetailViewController.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation
import UIKit

class RestaurantDetailViewController: UITableViewController {

    var restaurant: Restaurant?

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var categoryLabel: UILabel!

    @IBOutlet weak var addressLabel: UILabel!

    @IBOutlet weak var formattedPhoneLabel: UILabel!

    @IBOutlet weak var twitterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = restaurant?.name
        categoryLabel.text = restaurant?.category
        addressLabel.text = restaurant?.location?.formattedAddress.joined(separator: "\n")
       twitterLabel.text = restaurant?.contact?.formattedTwitterHandle
        formattedPhoneLabel.text = restaurant?.contact?.formattedPhone

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MapViewController, let restaurant = restaurant {
            destination.restaurants = [restaurant]
        }
    }

}
