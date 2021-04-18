//
//  TopRestaurantTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 22/03/21.
//

import UIKit

class TopRestaurantTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var topRestaurantCollection : UICollectionView!{
        didSet{
            self.topRestaurantCollection.register(UINib(nibName: "TopRestaurantCollectionVIewCell", bundle: nil), forCellWithReuseIdentifier: "TopRestaurantCollectionVIewCell")
        }
    }

    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()
    
    let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.numberOfPages = 3
        pc.currentPage = 0
        return pc
    }()
    
    var backImageArray = [UIImage(named: "Top1.png"), UIImage(named: "Top2.png"), UIImage(named: "Top3.png"), UIImage(named: "Top4.png"), UIImage(named: "Top5.png"), UIImage(named: "Top6.png"), UIImage(named: "Top7.png")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        topRestaurantCollection?.setCollectionViewLayout(flowLayout, animated: false)
        topRestaurantCollection.isPagingEnabled = true
        //topRestaurantCollection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "ID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopRestaurantCollectionVIewCell", for: indexPath) as! TopRestaurantCollectionVIewCell
        cell.backImage.image = backImageArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 160)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollPos = scrollView.contentOffset.x / self.contentView.frame.width
        pageControl.currentPage = Int(scrollPos)
    }
}
