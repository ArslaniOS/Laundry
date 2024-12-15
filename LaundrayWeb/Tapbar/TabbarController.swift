//
//  TabbarController.swift
//  LaundrayWeb
//
//  Created by Arslan  on 15/12/2024.
//

import Foundation
import UIKit
class TabBarController: UITabBarController {
    
    lazy var vc1: UINavigationController = {
        let vc = HomeViewController.instantiate(fromAppStoryboard: .Main)
        let nvc = UINavigationController(rootViewController: vc)
        nvc.setUpAttributes()
        nvc.tabBarItem.title = "Home"
        nvc.tabBarItem.image = UIImage(named: "home")
        nvc.tabBarItem.selectedImage = UIImage(named: "homeFilled")
        
        return nvc
    }()
    lazy var vc2: UINavigationController = {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "Orders"
        let nvc = UINavigationController(rootViewController: vc)
        nvc.setUpAttributes()
        nvc.tabBarItem.title = "Orders"
        nvc.tabBarItem.image = UIImage(named: "order")
        nvc.tabBarItem.selectedImage = UIImage(named: "tOrder")

        return nvc
    }()
    lazy var vc3: UINavigationController = {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "New Order"
        let nvc = UINavigationController(rootViewController: vc)
        nvc.setUpAttributes()
//        nvc.tabBarItem.title = "Home"
//        nvc.tabBarItem.image = UIImage(named: "home")
        return nvc
    }()
    lazy var vc4: UINavigationController = {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "Notifications"

        let nvc = UINavigationController(rootViewController: vc)
        nvc.setUpAttributes()
        nvc.tabBarItem.title = "Notification"
        nvc.tabBarItem.image = UIImage(named: "bell")
        nvc.tabBarItem.selectedImage = UIImage(named: "bellFilled")

        return nvc
    }()
    lazy var vc5: UINavigationController = {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "My Account"
        let nvc = UINavigationController(rootViewController: vc)
        nvc.setUpAttributes()
        nvc.tabBarItem.title = "My Account"
        nvc.tabBarItem.image = UIImage(named: "person")
        nvc.tabBarItem.selectedImage = UIImage(named: "personFill")

        return nvc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.tintColor = .appDarkBlue
        setupMiddleButton()
        viewControllers = [vc1, vc2, vc3, vc4,vc5]
    }
    

    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))

        var menuButtonFrame = menuButton.frame
        let screenHeight = UIScreen.main.bounds.height

       
        if screenHeight <= 667 {
            menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 5
        } else {
            menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 30
        }

        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = UIColor.appBlue
        menuButton.layer.cornerRadius = menuButtonFrame.height / 2
        menuButton.setImage(UIImage(named: "newOrder"), for: .normal)
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

        view.addSubview(menuButton)
        view.layoutIfNeeded()
    }


    // MARK: - Actions

    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }

}
