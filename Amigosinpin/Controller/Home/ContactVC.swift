//
//  ContactVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class ContactVC: UIViewController {

    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var contactUSTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.setLeftPaddingPoints(30)
        contactUSTV.register(UINib(nibName: "ContactUsTVCell", bundle: nil), forCellReuseIdentifier: "ContactUsTVCell")
    }
    

    @IBAction func sideMenuBtnAction(_ sender: UIButton) {
        self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
}

extension ContactVC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactUsTVCell", for: indexPath)as!ContactUsTVCell
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
