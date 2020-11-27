//
//  HomeVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var OlderCollectionView: UICollectionView!
    @IBOutlet weak var lastWeakCollectionView: UICollectionView!
    @IBOutlet weak var searchTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
searchTF.setLeftPaddingPoints(30)
    }
    
    @IBAction func sideMenuBtn(_ sender: UIButton) {
self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
    
}

extension HomeVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
}
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    return 10
    
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LastWeakCell", for: indexPath)
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == lastWeakCollectionView {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        lay.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        lay.minimumInteritemSpacing = 2
        lay.minimumLineSpacing = 0
        collectionView.collectionViewLayout = lay
        let size = (collectionView.frame.size.width-2) / 2
        return CGSize(width:size, height:130.0)
        }else{
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            lay.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            lay.minimumInteritemSpacing = 2
            lay.minimumLineSpacing = 0
            collectionView.collectionViewLayout = lay
            let size = (collectionView.frame.size.width-2) / 2
            return CGSize(width:size, height:100.0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
       
    }
}
extension HomeVC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentCalls", for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
