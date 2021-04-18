//
//  AutoTableViewCell.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit

class AutoTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet var autoCollectionView : UICollectionView!{
        didSet{
            autoCollectionView.register(UINib(nibName: "AutoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AutoCollectionViewCell")
        }
    }
    
    var x = 1
    
    var nameArray = ["10k+ orders delivered safely in Surat in the last few days","300+ parathas ordered in your neighbourhood in last few days","300+ orders from Biryani by kilo in mumbai during dinner in last week","300+ north indian dishes delivered in your neighbourhood lasr week","200+ patas delivered safely in mumbai"]
    
    var imageArray = [UIImage(named: "pizzas.jpeg"), UIImage(named: "biryani.jpeg"), UIImage(named: "ice1.jpeg"), UIImage(named: "bur.jpeg"), UIImage(named: "tea.png")]
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return layout
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        autoCollectionView?.setCollectionViewLayout(flowLayout, animated: false)
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.scrollAutomatically), userInfo: nil, repeats: true)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AutoCollectionViewCell", for: indexPath) as! AutoCollectionViewCell
        cell.iconImage.image = imageArray[indexPath.row]
        cell.desLabel.text = nameArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 330, height: 97)
    }
    
    @objc func scrollAutomatically(_ timer1: Timer) {
        if self.x < self.imageArray.count {
              let indexPath = IndexPath(item: x, section: 0)
              self.autoCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
              self.x = self.x + 1
            }else{
              self.x = 0
              self.autoCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
            }
    }
}
