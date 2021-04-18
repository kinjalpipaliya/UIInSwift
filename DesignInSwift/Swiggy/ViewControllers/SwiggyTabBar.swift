//
//  SwiggyTabBar.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 14/03/21.
//

import UIKit

class SwiggyTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(displayP3Red: 252/255, green: 82/255, blue: 49/255, alpha: 1)], for: .selected)
    }
}
 
