//
//  TopRestaurantCollectionVIewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 22/03/21.
//

import UIKit

class TopRestaurantCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet var backImage : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 5
        self.contentView.layer.masksToBounds = true
    }
}
