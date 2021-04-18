//
//  ThreadCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 09/03/21.
//

import UIKit

class ThreadCell: UITableViewCell {
    
    @IBOutlet var profileImage : UIImageView!
    @IBOutlet var mainProfileImage : UIImageView!
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var tweetLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage.layer.cornerRadius = 12
        mainProfileImage.layer.cornerRadius = 18
        nameLabel.attributedText = setAttributedString()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setAttributedString() -> NSAttributedString{
        let firstString = NSMutableAttributedString(string: "Kinjal Pipaliya", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])

        let secondString = NSAttributedString(string: " @kinjalpipaliya", attributes: [NSAttributedString.Key.foregroundColor : UIColor.opaqueSeparator, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])
        firstString.append(secondString)
        return firstString
    }
    
}
