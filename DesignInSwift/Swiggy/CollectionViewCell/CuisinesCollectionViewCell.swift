//
//  CuisinesCollectionViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit

class CuisinesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var backgroundImage : UIImageView!
    @IBOutlet var backView : UIView!
    @IBOutlet var restaurantLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.layer.cornerRadius = 40
        backgroundImage.layer.cornerRadius = 40
    }

}
