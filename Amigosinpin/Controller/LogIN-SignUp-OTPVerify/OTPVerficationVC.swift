//
//  OTPVerficationVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 18/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit
import SVPinView
class OTPVerficationVC: UIViewController {
    var enteredPin = ""
    var OTPValue:String = ""
     @IBOutlet weak var otpView: SVPinView!
    override func viewDidLoad() {
        super.viewDidLoad()

        otpView.isContentTypeOneTimeCode = true
        otpView.didChangeCallback = { pin in
            self.enteredPin = pin
        }
    }
    
    @IBAction func verifyBtnAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BaseViewController") as! BaseViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
