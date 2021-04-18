//
//  ManyRestaurantCollectionVIewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 21/03/21.
//

import UIKit

class ManyRestaurantCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet var backgroundImage : UIImageView!
    @IBOutlet var offLabelView : UIView!
    @IBOutlet var restaurantLabel : UILabel!
    @IBOutlet var timeLabel : UILabel!
    @IBOutlet var adLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
