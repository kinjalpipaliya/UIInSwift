//
//  RestaurantTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/03/21.
//

import UIKit

class RestaurantTableViewCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantsCollectionViewCell", for: indexPath)
        return cell
    }
}
