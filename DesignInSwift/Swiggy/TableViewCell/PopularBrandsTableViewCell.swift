//
//  PopularBrandsTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 22/03/21.
//

import UIKit

class PopularBrandsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var popularCollectionView : UICollectionView!{
        didSet{
            self.popularCollectionView.register(UINib(nibName: "PopularBrandCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PopularBrandCollectionViewCell")
        }
    }

    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()
    
    var nameArray = ["Domino's Pizza","Burger King","Subway","McDonald's","The Belgian Waffle Co.","Baskin Robbins"]
    
    var imageArray = [UIImage(named: "dominos.jpeg"), UIImage(named: "burgerking.png"), UIImage(named: "subway.jpeg"), UIImage(named: "mcdonalds.png"), UIImage(named: "belgian.png"), UIImage(named: "baskin.png")]
    
    var timeArray = ["27 mins","30 mins","33 mins","31 mins","34 mins","40 mins"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        popularCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularBrandCollectionViewCell", for: indexPath) as! PopularBrandCollectionViewCell
        
        cell.backgroundImage.image = imageArray[indexPath.row]
        cell.restaurantLabel.text = nameArray[indexPath.row]
        cell.timeLabel.text = timeArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 150)
    }
}
