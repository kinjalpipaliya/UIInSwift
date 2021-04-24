//
//  GooglePayBaseViewController.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/04/21.
//

import UIKit
import SnapKit

class GooglePayBaseViewController: UIViewController {
    
    @IBOutlet var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    func initialSetup() {
        self.popUpView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.view.snp.bottom).offset(-((self.view.frame.height/3))+2)
            make.height.equalTo (400)
        }
    }
}
