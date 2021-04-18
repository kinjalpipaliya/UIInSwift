//
//  RestaurantTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/03/21.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var restaurantCollectionView : UICollectionView!{
        didSet{
            self.restaurantCollectionView.register(UINib(nibName: "RestaurantsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RestaurantsCollectionViewCell")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantsCollectionViewCell", for: indexPath) as! RestaurantsCollectionViewCell
        if indexPath.row == 1{
            cell.restautantView.backgroundColor = UIColor(red: 248.0/255, green: 104.0/255, blue: 53.0/255, alpha: 1)
            cell.nextView.backgroundColor = UIColor(red: 235.0/255, green: 93.0/255, blue: 39.0/255, alpha: 1)
            cell.noContactLabel.text = "Pick up, Drop, Buy Anything"
            cell.restaurantLabel.text = "Genie"
            cell.restaurantImage.image = UIImage(named: "Burger.png")
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding : CGFloat = 8
        let width = (restaurantCollectionView.frame.width / 2) - padding
        return CGSize(width: width, height: 150)
    }
    	
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
