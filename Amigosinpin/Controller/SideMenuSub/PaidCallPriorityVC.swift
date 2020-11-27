//
//  PaidCallPriorityVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class PaidCallPriorityVC: UIViewController {

    var mainDataArr:[String] = ["Minutes","Wi-Fi Calls","Data Calls"]
    var subDataArr:[String] = ["Provides excellent quality using your cellular minutes.","Provides excellent quality when your Wi-Fi signal is strong. Use the option to save both your cellular and data plan","Save cellular minutes using your data plan call quality dependent upon singal Strength of the data network"]
    var displayIconsArr:[String] = ["antenna","wifi","icloud"]
    @IBOutlet weak var paidCallPriorityTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
paidCallPriorityTV.register(UINib(nibName: "PaidCallProirityTVCell", bundle: nil), forCellReuseIdentifier: "PaidCallProirityTVCell")
    }
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension PaidCallPriorityVC:UITableViewDelegate,UITableViewDataSource {
func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return mainDataArr.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaidCallProirityTVCell", for: indexPath)as!PaidCallProirityTVCell
        cell.mainLB.text = mainDataArr[indexPath.row]
        cell.subLabel.text = subDataArr[indexPath.row]
        cell.displayImg.image = UIImage(named: displayIconsArr[indexPath.row])
        return cell
    }
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
}

}
