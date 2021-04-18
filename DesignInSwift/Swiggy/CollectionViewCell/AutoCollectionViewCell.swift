//
//  AutoCollectionViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit

class AutoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var iconImage : UIImageView!
    @IBOutlet var desLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconImage.layer.cornerRadius = 15
        
    }

}
