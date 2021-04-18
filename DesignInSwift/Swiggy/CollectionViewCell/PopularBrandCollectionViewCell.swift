//
//  PopularBrandCollectionViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 22/03/21.
//

import UIKit

class PopularBrandCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var backgroundImage : UIImageView!
    @IBOutlet var backView : UIView!
    @IBOutlet var restaurantLabel : UILabel!
    @IBOutlet var timeLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 40
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.gray.cgColor
        backView.layer.masksToBounds = true
    }
}
