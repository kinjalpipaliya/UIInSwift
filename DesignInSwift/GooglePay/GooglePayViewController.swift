//
//  GooglePayViewController.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 27/03/21.
//

import UIKit

class GooglePayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet var MemberTableView : UITableView!{
        didSet{
            MemberTableView.register(UINib(nibName: "MemberTableViewCell", bundle: nil), forCellReuseIdentifier: "MemberTableViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MemberTableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemberTableViewCell", for: indexPath) as! MemberTableViewCell
        
        if indexPath.row == 1{
            cell.titleLabel.text = "Business & bills"
            cell.exploreButton.isHidden = false
            cell.exploreImage.isHidden = false
            cell.exploreLabel.isHidden = false
        }else{
            cell.exploreButton.isHidden = true
            cell.exploreImage.isHidden = true
            cell.exploreLabel.isHidden = true
        }
        
        return cell
    }
}
