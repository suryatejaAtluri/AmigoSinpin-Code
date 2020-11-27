//
//  PaymentVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 29/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit



class PaymentVC: UIViewController {
    var displayNamersArr:[String] = ["Reedeem a Amigo Card","Calling Plans","Mobile Top-Up","Money Transfer","Add Funds","Share Your Balance","Payment","Payment History","Help?"]
    var displayiconArr:[String] = ["ASP-icon","Calling-Plan","Mobile-topup","Money-Transfer","Add-fund","Sharebalance","Payment","payment-history","helpz"]
    @IBOutlet weak var ASTCollectionView: UICollectionView!
    @IBOutlet weak var rechargesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sideMenuBtnAction(_ sender: UIButton) {
        self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
}

extension PaymentVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
}
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == ASTCollectionView {
        return displayNamersArr.count
    }else{
    return 10
    }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == ASTCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaymentCollectionViewCell", for: indexPath)as!PaymentCollectionViewCell
            cell.displayImg.image = UIImage(named: displayiconArr[indexPath.row])
            cell.displayLB.text = displayNamersArr[indexPath.row]
            
            return cell
        }else{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Recharge", for: indexPath)
        return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == ASTCollectionView {
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            lay.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 0)
            lay.minimumInteritemSpacing = 5
            lay.minimumLineSpacing = 5
            collectionView.collectionViewLayout = lay
            let size = (collectionView.frame.size.width-20) / 4
            return CGSize(width:size, height:100.0)
        }else{
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            lay.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 0)
            lay.minimumInteritemSpacing = 5
            lay.minimumLineSpacing = 5
            collectionView.collectionViewLayout = lay
            let size = (collectionView.frame.size.width-20) / 4
            return CGSize(width:size, height:80.0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == ASTCollectionView {
            print(indexPath.row)
            switch indexPath.row {
            case 4:
                let moveToAddFundsVC = self.storyboard?.instantiateViewController(withIdentifier: "AddMoneyVC")as!AddMoneyVC
                self.navigationController?.pushViewController(moveToAddFundsVC, animated: false)
            default:
                print("suryaTeja")
            }
        }else{
        print(indexPath.row)
        }
    }
}
