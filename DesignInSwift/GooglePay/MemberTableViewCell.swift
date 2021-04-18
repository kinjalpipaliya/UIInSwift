//
//  MemberTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 27/03/21.
//

import UIKit

class MemberTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var MemberCollectionView: UICollectionView!{
        didSet{
            self.MemberCollectionView.register(UINib(nibName: "MemberCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MemberCollectionViewCell")
        }
    }
    
    @IBOutlet var exploreButton : UIButton!
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var exploreImage : UIImageView!
    @IBOutlet var exploreLabel : UILabel!
    @IBOutlet var heightConstraint : NSLayoutConstraint!
    
    var nameArray = ["Kinjal","Person","Avtar","Tkc","Dalsukh","Pipaliya","Nreshbhai","Krina","Richa","The cafe","Dhruti","More","More","More"]
    
    var imageArray = [UIImage(named: "profileImage.jpg"), UIImage(named: "person1.jpeg"), UIImage(named: "A (2)"), UIImage(named: "A (2)"), UIImage(named: "A (2)"), UIImage(named: "A (2)"),UIImage(named: "A (2)"),UIImage(named: "A (2)"),UIImage(named: "A (2)"),UIImage(named: "A (2)"),UIImage(named: "A (2)"),UIImage(named: "arrow (3)")]
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 30
        layout.minimumInteritemSpacing = 30
        layout.scrollDirection = .vertical
        return layout
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        MemberCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
        self.selectionStyle = .none
    }
    
    override func draw(_ rect: CGRect) {
        self.exploreButton.layer.cornerRadius = 17
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemberCollectionViewCell", for: indexPath) as! MemberCollectionViewCell
        if indexPath.row == 11{
            cell.ProfileImageView.contentMode = .center
        }
        if indexPath.row == 1{
            cell.onlineView.isHidden = false
        }
        if indexPath.row == 6{
            cell.onlineView.isHidden = false
        }
        if indexPath.row == 8{
            cell.onlineView.isHidden = false
        }
        if indexPath.row == 9{
            cell.onlineView.isHidden = false
        }
        cell.nameLabel.text = nameArray[indexPath.row]
        cell.ProfileImageView.image = imageArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 90)
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        if indexPath.row == 11{
//            let height = MemberCollectionView.collectionViewLayout.collectionViewContentSize.height
//            heightConstraint.constant = height
//        }
//    }
}
