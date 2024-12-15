//
//  HomeViewController.swift
//  LaundrayWeb
//
//  Created by Arslan  on 15/12/2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var bgImageView: CurvedImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
  
    @IBAction func onOrder(_ sender: Any) {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "Orders"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func onWorks(_ sender: Any) {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "How it Works"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onAboutUs(_ sender: Any) {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "About Us"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onContactus(_ sender: Any) {
        let vc = CommonViewController.instantiate(fromAppStoryboard: .Main)
        vc.selectedVc = "Contact Us"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

