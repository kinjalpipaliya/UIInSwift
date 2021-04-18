//
//  SwiggyHomeViewController.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 14/03/21.
//

import UIKit

class SwiggyHomeViewController: UIViewController {
    
    @IBOutlet var swiggyTableView : UITableView!{
        didSet{
            self.swiggyTableView.register(UINib(nibName: "OffersTableViewCell", bundle: nil), forCellReuseIdentifier: "OffersTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "RestaurantTableViewCell", bundle: nil), forCellReuseIdentifier: "RestaurantTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "ManyRestaurantTableViewCell", bundle: nil), forCellReuseIdentifier: "ManyRestaurantTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "TopRestaurantTableViewCell", bundle: nil), forCellReuseIdentifier: "TopRestaurantTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "PopularBrandsTableViewCell", bundle: nil), forCellReuseIdentifier: "PopularBrandsTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "QuickLinkTableViewCell", bundle: nil), forCellReuseIdentifier: "QuickLinkTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "CuisinesTableViewCell", bundle: nil), forCellReuseIdentifier: "CuisinesTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "AutoTableViewCell", bundle: nil), forCellReuseIdentifier: "AutoTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "CouponTableViewCell", bundle: nil), forCellReuseIdentifier: "CouponTableViewCell")
            self.swiggyTableView.register(UINib(nibName: "LiveTableViewCell", bundle: nil), forCellReuseIdentifier: "LiveTableViewCell")
        }
    }
    
    private var finishedLoadingInitialTableCells = false
    
    var countNumber = [0,1,2,3,4,5,6,7,8,9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.swiggyTableView.separatorStyle = .none
    }
}

extension SwiggyHomeViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OffersTableViewCell", for: indexPath) as! OffersTableViewCell
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantTableViewCell", for: indexPath) as! RestaurantTableViewCell
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ManyRestaurantTableViewCell", for: indexPath) as! ManyRestaurantTableViewCell
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopRestaurantTableViewCell", for: indexPath) as! TopRestaurantTableViewCell
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PopularBrandsTableViewCell", for: indexPath) as! PopularBrandsTableViewCell
            return cell
        }else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "QuickLinkTableViewCell", for: indexPath) as! QuickLinkTableViewCell
            return cell
        }else if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CuisinesTableViewCell", for: indexPath) as! CuisinesTableViewCell
            return cell
        }else if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AutoTableViewCell", for: indexPath) as! AutoTableViewCell
            return cell
        }else if indexPath.row == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CouponTableViewCell", for: indexPath) as! CouponTableViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "LiveTableViewCell", for: indexPath) as! LiveTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1{
            return 160
        }else{
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if let lastIndexPath = tableView.indexPathsForVisibleRows?.last{
            if lastIndexPath.row <= indexPath.row{
                cell.center.y = cell.center.y + cell.frame.height / 2
                cell.alpha = 0
                UIView.animate(withDuration: 0.5, delay: 0.05*Double(indexPath.row), options: [.curveEaseInOut], animations: {
                    cell.center.y = cell.center.y - cell.frame.height / 2
                    cell.alpha = 1
                }, completion: nil)
            }
        }
    }
}

