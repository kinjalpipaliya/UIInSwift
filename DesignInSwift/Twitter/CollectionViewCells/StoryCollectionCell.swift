//
//  StoryCollectionCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 07/03/21.
//

import UIKit

class StoryCollectionCell: UICollectionViewCell {
    
    @IBOutlet var profileImage : UIImageView!
    @IBOutlet var plusImage : UIImageView!
    @IBOutlet var name : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.profileImage.layer.cornerRadius = self.profileImage.frame.height/2
        profileImage.layer.borderWidth = 1.5
        profileImage.layer.borderColor = UIColor(red: 0/255, green: 155/255, blue: 247/255, alpha: 1).cgColor
        plusImage.layer.cornerRadius = plusImage.frame.height/2
    }
}
