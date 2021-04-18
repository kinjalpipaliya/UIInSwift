//
//  RestaurantsCollectionViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/03/21.
//

import UIKit

class RestaurantsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var backView : UIView!
    @IBOutlet var restautantView : UIView!
    @IBOutlet var nextView : UIView!
    @IBOutlet var restaurantLabel : UILabel!
    @IBOutlet var noContactLabel : UILabel!
    @IBOutlet var restaurantImage : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 10
        self.contentView.layer.masksToBounds = true
    }
}
