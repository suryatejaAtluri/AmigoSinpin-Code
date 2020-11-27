//
//  ChoosePaymentVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class ChoosePaymentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPaymentBtnAction(_ sender: UIButton) {
        
    }
    
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
