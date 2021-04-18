//
//  QuicklinksCollectionVIewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 23/03/21.
//

import UIKit

class QuicklinksCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet var backGroungImage : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib() 
        // Initialization code
        backGroungImage.layer.cornerRadius = 10
        backGroungImage.layer.borderWidth = 1
        backGroungImage.layer.borderColor = UIColor(displayP3Red: 156/255, green: 155/255, blue: 231/255, alpha: 1).cgColor
        backGroungImage.layer.masksToBounds = true
    }
}
