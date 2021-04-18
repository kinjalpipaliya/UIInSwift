//
//  OffersTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/03/21.
//

import UIKit

class OffersTableViewCell: UITableViewCell {
    
    @IBOutlet var exploreOfferView : UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        exploreOfferView.layer.cornerRadius = 7
        exploreOfferView.layer.borderColor = UIColor.opaqueSeparator.cgColor
        exploreOfferView.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
