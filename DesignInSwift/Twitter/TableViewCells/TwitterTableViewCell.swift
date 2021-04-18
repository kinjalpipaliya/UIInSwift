//
//  TwitterTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 04/03/21.
//

import UIKit

class TwitterTableViewCell: UITableViewCell {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var demoImage: UIImageView!
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var tweetLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = 18
        demoImage.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setAttributedString(firstString: String, secondString: String) -> NSAttributedString{
        let firstString = NSMutableAttributedString(string: firstString, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])

        let secondString = NSAttributedString(string: secondString, attributes: [NSAttributedString.Key.foregroundColor : UIColor.opaqueSeparator, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])
        firstString.append(secondString)
        return firstString
    }
}
