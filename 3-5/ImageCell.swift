//
//  ImageCell.swift
//  3-5
//
//  Created by Фархат Сталбек уулу on 1/12/22.
//

import Foundation
import UIKit


class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var itemNameLabel: UILabel!
    @IBOutlet var itemPriceLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    override func layoutSubviews () {
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 30
        
    }
}


