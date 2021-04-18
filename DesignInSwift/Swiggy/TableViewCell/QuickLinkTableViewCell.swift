//
//  QuickLinkTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 23/03/21.
//

import UIKit

class QuickLinkTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var quickCollectionView : UICollectionView!{
        didSet{
            self.quickCollectionView.register(UINib(nibName: "QuicklinksCollectionVIewCell", bundle: nil), forCellWithReuseIdentifier: "QuicklinksCollectionVIewCell")
        }
    }
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        quickCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuicklinksCollectionVIewCell", for: indexPath) as! QuicklinksCollectionVIewCell
        cell.backGroungImage.image = UIImage(named: "Gennie.png")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 345, height: 115)
    }
}
