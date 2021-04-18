//
//  ManyRestaurantTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 21/03/21.
//

import UIKit

class ManyRestaurantTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var manuRestaurantCollection : UICollectionView!{
        didSet{
            self.manuRestaurantCollection.register(UINib(nibName: "ManyRestaurantCollectionVIewCell", bundle: nil), forCellWithReuseIdentifier: "ManyRestaurantCollectionVIewCell")
        }
    }
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()
    
    var nameArray = ["Sai Samrat Pure Veg.","Bharat Restaurant","La Pino'z pizza","Radhe Restaurant","Liberty Lunch Home","Pete's Pizzeria","Natural IceCream","Mazgoan Chinese","The Biryania","Mumbai Bites"]
    
    var imageArray = [UIImage(named: "sandwich.jpg"), UIImage(named: "salad.jpg"), UIImage(named: "pizza.jpg"), UIImage(named: "ghughra.jpg"), UIImage(named: "soup.jpg"), UIImage(named: "pizza1.jpg"), UIImage(named: "iceCream.jpg"), UIImage(named: "manchurian.jpg"), UIImage(named: "heathy.jpg"), UIImage(named: "pizza2.jpg")]
    
    var timeArray = ["35 mins","30 mins","33 mins","38 mins","34 mins","40 mins","52 mins","37 mins","36 min","31 mins"]

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        manuRestaurantCollection?.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ManyRestaurantCollectionVIewCell", for: indexPath) as! ManyRestaurantCollectionVIewCell
        cell.backgroundImage.image = imageArray[indexPath.row]
        cell.restaurantLabel.text = nameArray[indexPath.row]
        cell.timeLabel.text = timeArray[indexPath.row]
        cell.backgroundImage.layer.cornerRadius = 5
        
        if indexPath.row == 0{
            cell.offLabelView.isHidden = false
            cell.adLabel.isHidden = false
        }else if indexPath.row == 2{
            cell.offLabelView.isHidden = false
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 150)
    }
}
