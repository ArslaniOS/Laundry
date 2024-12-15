//
//  Nav+Ext.swift
//  LaundrayWeb
//
//  Created by Arslan  on 15/12/2024.
//
import UIKit
import Foundation

extension UINavigationController{
    
    func setUpAttributes(){
        self.navigationBar.barTintColor = UIColor(named: "navigation")
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.isTranslucent = false
        self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 18, weight: .semibold)]
//        self.navigationBar.isTranslucent = false
//        self.navigationBar.barStyle = .black
        
        self.navigationBar.backgroundColor = UIColor(named: "navigation")
        
// MARK: - setting up navigationbar color/transparent
//        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        self.navigationBar.shadowImage = UIImage()
//        self.navigationBar.isTranslucent = true
//        self.view.backgroundColor = UIColor.clear
    }
    
    func popToViewController(ofType clas: AnyClass, animated: Bool = true) {
        if let vc = self.viewControllers.last(where: {$0.isKind(of: clas)}) {
            self.popToViewController(vc, animated: animated)
        }
    }
    
    func pushViewControllerWithFlipAnimation(viewController:UIViewController){
        self.pushViewController(viewController
        , animated: false)
        if let transitionView = self.view{
            UIView.transition(with:transitionView, duration: 0.8, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }

    func popViewControllerWithFlipAnimation(){
        self.popViewController(animated: false)
        if let transitionView = self.view{
            UIView.transition(with:transitionView, duration: 0.8, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}
