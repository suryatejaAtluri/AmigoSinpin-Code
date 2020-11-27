//
//  SignUPVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class SignUPVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.setLeftPaddingPoints(80)
    }
    //MARK: - Verify Button Action .
    @IBAction func veriftBtnAction(_ sender: UIButton) {
       let moveOTPVerificationVC = self.storyboard?.instantiateViewController(withIdentifier: "OTPVerficationVC")as!OTPVerficationVC
        self.navigationController?.pushViewController(moveOTPVerificationVC, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
self.navigationController?.popViewController(animated: true)
    }
}
