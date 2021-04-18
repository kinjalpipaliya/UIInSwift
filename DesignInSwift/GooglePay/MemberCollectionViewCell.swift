//
//  MemberCollectionViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 27/03/21.
//

import UIKit

class MemberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var ProfileImageView : UIImageView!
    @IBOutlet var onlineView : UIView!
    @IBOutlet var nameLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func draw(_ rect: CGRect) {
        ProfileImageView.layer.cornerRadius = ProfileImageView.frame.height/2
        ProfileImageView.layer.borderColor = UIColor.gray.cgColor
        ProfileImageView.layer.borderWidth = 1
        onlineView.layer.cornerRadius = onlineView.frame.height/2
        onlineView.layer.borderWidth = 1.5
        onlineView.layer.borderColor = UIColor.white.cgColor
    }
}
