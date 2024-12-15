//
//  CommonViewController.swift
//  LaundrayWeb
//
//  Created by Arslan  on 15/12/2024.
//

import UIKit

class CommonViewController: UIViewController {

    @IBOutlet weak var selectedVc_lbl: UILabel!
    
    var selectedVc:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        selectedVc_lbl.text = selectedVc
    }
    



}
