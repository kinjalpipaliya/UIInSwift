//
//  TwitterStoryCellTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 07/03/21.
//

import UIKit

class TwitterStoryCellTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var storyCollectionView : UICollectionView!{
        didSet{
            storyCollectionView.register(UINib(nibName: "StoryCollectionCell", bundle: nil), forCellWithReuseIdentifier: "StoryCollectionCell")
        }
    }
    
    var nameArray = ["Twitter","djtapaniya","Apple","BillGates","elonmusk","avtar"]
    
    var imageArray = [UIImage(named: "twitter.jpg"), UIImage(named: "dalsukh.jpg"), UIImage(named: "apple.jpg"), UIImage(named: "billgates.jpg"), UIImage(named: "elonmusk.jpg"), UIImage(named: "ToyFaces_Colored_BG_29.jpg")]

    override func awakeFromNib() {
        super.awakeFromNib()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        storyCollectionView?.setCollectionViewLayout(layout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionCell", for: indexPath) as! StoryCollectionCell
        if indexPath.row == 0{
            cell.plusImage.isHidden = false
            cell.profileImage.layer.borderWidth = 0
        }else{
            cell.plusImage.isHidden = true
            cell.profileImage.image = imageArray[indexPath.row - 1]
            cell.name.text = nameArray[indexPath.row - 1]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50
                      ,height: self.storyCollectionView.frame.height)
    }
}
