//
//  CouponTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit

class CouponTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var couponCollectionView : UICollectionView!{
        didSet{
            couponCollectionView.register(UINib(nibName: "CouponCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CouponCollectionViewCell")
        }
    }
            
    var imageArray = [UIImage(named: "coupon1.png"), UIImage(named: "coupon2.png"), UIImage(named: "coupon3.png"), UIImage(named: "coupon4.png"), UIImage(named: "coupon5.png"), UIImage(named: "coupon6.png")]
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        couponCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CouponCollectionViewCell", for: indexPath) as! CouponCollectionViewCell
        cell.iconImage.image = imageArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 138, height: 170)
    }
}
