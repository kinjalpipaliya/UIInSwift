//
//  GooglePayBaseViewController.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 20/04/21.
//

import UIKit
import SnapKit

class GooglePayBaseViewController: UIViewController {
    
    private let popUpBackGroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .opaqueSeparator
        view.alpha = 0.2
        return view
    }()
    
    private let popUpView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let upView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        popUpBackGroundView.layer.cornerRadius = 9
        popUpView.layer.cornerRadius = 10
    }
    
    func initialSetup() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "GooglePayViewController") as! GooglePayViewController

        //add as a childviewcontroller
        self.addChild(controller)

         // Add the child's View as a subview
         self.popUpView.addSubview(controller.view)
         controller.view.frame = popUpView.bounds
         controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

         // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParent: self)
        
        self.view.addSubview(popUpBackGroundView)
        self.popUpBackGroundView.addSubview(popUpView)
        self.popUpBackGroundView.addSubview(upView)
        
        self.popUpView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(3)
        }
        self.popUpBackGroundView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.view.snp.bottom).offset(-((self.view.frame.height/10))+2)
            make.height.equalTo(800)
        }
        let upGesture = UISwipeGestureRecognizer(target: self, action: #selector(tapPopView(_:)))
        upGesture.direction = .up
        controller.view.addGestureRecognizer(upGesture)
        
        let downGesture = UISwipeGestureRecognizer(target: self, action: #selector(tapPopView(_:)))
        downGesture.direction = .down
        controller.view.addGestureRecognizer(downGesture)
    }
    
    @objc func tapPopView(_ gesture: UISwipeGestureRecognizer){
        var frame = popUpBackGroundView.frame
        let maxY = self.popUpBackGroundView.frame.origin.y + ((self.view.frame.height/10))+2
        switch gesture.direction{
        case .up:
    
            print("max Y :\(maxY)")
            print("frame y :\(frame.origin.y)")
            
            if frame.origin.y == 808.3333333333334 {
                frame.origin.y = 200
            }
        case .down: break
        default:
            break
        }
        
        UIView.animate(withDuration: 1) {
            self.popUpBackGroundView.frame = frame
        }
    }
}
