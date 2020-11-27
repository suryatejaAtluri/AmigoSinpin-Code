//
//  LogInVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class LogInVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTF.setLeftPaddingPoints(50)
        mobileNumberTF.setLeftPaddingPoints(80)
    }
    
    @IBAction func signUPBtnAction(_ sender: UIButton) {
        let moveToSingUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUPVC")as!SignUPVC
        self.navigationController?.pushViewController(moveToSingUpVC, animated: true)
    }
    
    @IBAction func confirmYourPasswordBtnAction(_ sender: UIButton) {
        let moveOTPVerificationVC = self.storyboard?.instantiateViewController(withIdentifier: "OTPVerficationVC")as!OTPVerficationVC
        self.navigationController?.pushViewController(moveOTPVerificationVC, animated: true)
       
        
    }
    
    
    }
