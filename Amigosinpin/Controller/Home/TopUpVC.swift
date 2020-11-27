//
//  TopUpVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class TopUpCellTVCell: UITableViewCell {
}
class TopUpVC: UIViewController {

    @IBOutlet weak var enterMobileNumberTF: UITextField!
    @IBOutlet weak var searchTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.setLeftPaddingPoints(35)
        enterMobileNumberTF.setLeftPaddingPoints(35)
        enterMobileNumberTF.setRightPaddingPoints(30)
        searchTF.setRightPaddingPoints(30)
    }
    
    @IBAction func sideMenuBtnAction(_ sender: UIButton) {
    self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
    
}

extension TopUpVC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopUpCell", for: indexPath)as!TopUpCellTVCell
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let moveToTopUpDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "TopUpDetailVC")as!TopUpDetailVC
        self.navigationController?.pushViewController(moveToTopUpDetailVC, animated: true)
    }
}

