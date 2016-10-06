//
//  RestaurantCell.swift
//  lunch
//
//  Created by Danielle Denicola on 10/5/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

import Foundation
import UIKit

class RestaurantCell: UICollectionViewCell {

    var restaurant: Restaurant? {
        didSet {
            self.nameLabel.text = restaurant?.name
            self.categoryLabel.text = restaurant?.category

            let cacheDirectory = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first

            if let urlString = restaurant?.backgroundImageURL?.lastPathComponent, let cacheURL = cacheDirectory?.appendingPathComponent(urlString), let data = NSData(contentsOf: cacheURL) {
                self.imageView.image = UIImage(data: data as Data)
            } else {
                if let url = restaurant?.backgroundImageURL {
                    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, _, error) in
                        if let data = data{
                            DispatchQueue.main.async {
                                self.imageView.image = UIImage(data: data)
                            }

                            if let writeURL = cacheDirectory?.appendingPathComponent(url.lastPathComponent) {
                                do {
                                    try data.write(to: writeURL)
                                } catch {
                                    print(error)
                                }
                            }
                        }
                    })
                    task.resume()
                } else {
                    self.imageView.image = nil
                }
            }
        }
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
        
}
