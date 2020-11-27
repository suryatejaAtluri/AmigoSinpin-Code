//
//  LeftSideMenuVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 30/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class LeftSideMenuVC: UIViewController {
     var profileNameArr = [""]
        var namesArr:[String] = ["My Profile","Paid Calls Priority","International Rates","Invite Friends","Notification","Funding History","Support","Privacy","Contacts","Credit","Coupon or Promotion code"]
        var imagesArr:[String] = ["profile-icon","paidCall","InterNationalRates","invitefriend","Notification","clock","Support","privacy-policy","Contact","credit","coupon"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension LeftSideMenuVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return profileNameArr.count
        default:
            return namesArr.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTVCell")as!MenuTVCell
            cell.nameLB.text = profileNameArr[indexPath.row]
            cell.displayImg.image = UIImage(named: "surya")
            //cell.displayImg.backgroundColor = .systemRed
            cell.imageWidthConstraint.constant = 150
            cell.imgHeightConstrain.constant = 150
            cell.displayImg.cornerRadius = 75
            cell.displayImg.borderWidth = 1
            cell.displayImg.borderColor = UIColor.white
            cell.rightArrow.isHidden = true
            cell.cameraImg.isHidden = false
            cell.selectionStyle = .none
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTVCell")as!MenuTVCell
            cell.nameLB.text = namesArr[indexPath.row]
            cell.displayImg.image = UIImage(named: imagesArr[indexPath.row])
            cell.imageWidthConstraint.constant = 0
            cell.imgHeightConstrain.constant = 0
            cell.selectionStyle = .none
            cell.rightArrow.isHidden = false
            cell.cameraImg.isHidden = true
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        switch index {
        case 0:
            let moveToProfileVC = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC")as!ProfileVC
            self.navigationController?.pushViewController(moveToProfileVC, animated: true)
        case 1:
            let moveToPaidCallVC = self.storyboard?.instantiateViewController(withIdentifier: "PaidCallPriorityVC")as!PaidCallPriorityVC
            self.navigationController?.pushViewController(moveToPaidCallVC, animated: true)
        default:
            print("surya")
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 160
        default:
            return 60
        }
        
    }
}
