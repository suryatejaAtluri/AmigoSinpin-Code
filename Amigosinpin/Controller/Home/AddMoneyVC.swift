//
//  AddMoneyVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 29/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class AddMoneyVC: UIViewController {

    @IBOutlet weak var amountTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        amountTF.setLeftPaddingPoints(30)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func proceedBtnAction(_ sender: UIButton) {
        let moveToChoosePaymentVC = self.storyboard?.instantiateViewController(withIdentifier: "ChoosePaymentVC")as!ChoosePaymentVC
        self.navigationController?.pushViewController(moveToChoosePaymentVC, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        }
    
}
