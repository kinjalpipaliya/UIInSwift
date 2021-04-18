//
//  TwitterHomeViewController.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 03/03/21.
//

import UIKit

class TwitterHomeViewController: UIViewController {
    
    @IBOutlet var twitterTableView : UITableView!{
        didSet{
            twitterTableView.register(UINib(nibName: "TwitterTableViewCell", bundle: nil), forCellReuseIdentifier: "TwitterTableViewCell")
            twitterTableView.register(UINib(nibName: "TwitterStoryCellTableViewCell", bundle: nil), forCellReuseIdentifier: "TwitterStoryCellTableViewCell")
            twitterTableView.register(UINib(nibName: "TwitterTextCell", bundle: nil), forCellReuseIdentifier: "TwitterTextCell")
            twitterTableView.register(UINib(nibName: "ThreadCell", bundle: nil), forCellReuseIdentifier: "ThreadCell")
        }
    }
    
    @IBOutlet var newTweet : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tabBarController?.tabBar.barTintColor = UIColor(red: 20/255, green: 31/255, blue: 44/255, alpha: 0.5)
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 20/255, green: 31/255, blue: 44/255, alpha: 0.5)
        
        navigationController?.navigationBar.showNavBarSeparator()
        
        let leftButton = UIBarButtonItem(image: UIImage(named: "Profile"), style: .plain, target: self, action: #selector(ProfileTapped(_ :)))
        self.navigationItem.leftBarButtonItem = leftButton
        newTweet.layer.cornerRadius = self.newTweet.frame.height/2
    }
    
    @objc func ProfileTapped(_ sender : UIButton){
        print("profile tapped!!")
    }
    
}

extension UINavigationBar {

    func hideNavBarSeparator() {
        let image = UIImage()
        shadowImage = image
        setBackgroundImage(image, for: UIBarMetrics.default)
    }

    func showNavBarSeparator() {
        let img = UIImage.pixelImageWithColor(color: UIColor.white)
        shadowImage = img
    }
}

extension UIImage {
    class func pixelImageWithColor(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 0.8, height: 0.8)
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

extension TwitterHomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwitterStoryCellTableViewCell", for: indexPath) as! TwitterStoryCellTableViewCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwitterTextCell", for: indexPath) as! TwitterTextCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.profileImage.image = UIImage(named: "profileImage1.jpg")
            cell.tweetLabel.text = "taking this challenge to Improve and practice layouts in swift."
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwitterTableViewCell", for: indexPath) as! TwitterTableViewCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.profileImage.image = UIImage(named: "dalsukh.jpg")
            cell.tweetLabel.text = "Desk😁💙"
            cell.demoImage.image = UIImage(named: "desk.jpeg")
            cell.nameLabel.attributedText = setAttributedString(firstString: "Dalsukh Tapaniya", secondString: " @djtapaniya")
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThreadCell", for: indexPath) as! ThreadCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.mainProfileImage.image = UIImage(named: "apple.jpg")
            cell.profileImage.image = UIImage(named: "apple.jpg")
            cell.nameLabel.attributedText = setAttributedString(firstString: "Apple", secondString: " @apple")
            cell.tweetLabel.text = "Find the perfect way to express yourself. Here’s how to search for emoji."
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwitterTableViewCell", for: indexPath) as! TwitterTableViewCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.profileImage.image = UIImage(named: "twitter.jpg")
            cell.nameLabel.attributedText = setAttributedString(firstString: "Twitter", secondString: " @twitter")
            cell.tweetLabel.text = "reminder that you can mute words"
            cell.demoImage.image = UIImage(named: "mute.jpeg")
            return cell
        }else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwitterTextCell", for: indexPath) as! TwitterTextCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.profileImage.image = UIImage(named: "elonmusk.jpg")
            cell.nameLabel.attributedText = setAttributedString(firstString: "Elon Musk", secondString: " @elonmusk")
            cell.tweetLabel.text = "If you want the Tesla Full Self-Driving Beta downloaded to your car, let us know. Doubling beta program size now with 8.2 & probably 10X size with 8.3. Still be careful, but it’s getting mature."
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThreadCell", for: indexPath) as! ThreadCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.mainProfileImage.image = UIImage(named: "ToyFaces_Colored_BG_29.jpg")
            cell.profileImage.image = UIImage(named: "ToyFaces_Colored_BG_29.jpg")
            cell.nameLabel.attributedText = setAttributedString(firstString: "Avtar", secondString: " @avtar")
            return cell
        }
    }
    func setAttributedString(firstString: String, secondString: String) -> NSAttributedString{
        let firstString = NSMutableAttributedString(string: firstString, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])

        let secondString = NSAttributedString(string: secondString, attributes: [NSAttributedString.Key.foregroundColor : UIColor.opaqueSeparator, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13)])
        firstString.append(secondString)
        return firstString
    }
}
