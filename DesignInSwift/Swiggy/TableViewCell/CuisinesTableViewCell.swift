//
//  CuisinesTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit

class CuisinesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var cuisinesCollectionView : UICollectionView!{
        didSet{
            self.cuisinesCollectionView.register(UINib(nibName: "CuisinesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CuisinesCollectionViewCell")
        }
    }

    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()
    
    var nameArray = ["Pizzas","Biryani","IceCream","Burgers","Tea & Beverages","Chinese","North Indian","Rolls and Sandwiches","Cakes & Desserts"]
    
    var imageArray = [UIImage(named: "pizzas.jpeg"), UIImage(named: "biryani.jpeg"), UIImage(named: "ice1.jpeg"), UIImage(named: "bur.jpeg"), UIImage(named: "tea.png"), UIImage(named: "chinese.jpeg"), UIImage(named: "north.jpeg"), UIImage(named: "sand.jpeg"), UIImage(named: "cake.jpeg")]
        
    override func awakeFromNib() {
        super.awakeFromNib()
        cuisinesCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CuisinesCollectionViewCell", for: indexPath) as! CuisinesCollectionViewCell
        cell.backgroundImage.image = imageArray[indexPath.row]
        cell.restaurantLabel.text = nameArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 140)
    }
}
