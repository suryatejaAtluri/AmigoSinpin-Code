//
//  DailVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 30/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class DailVC: UIViewController {
    var numberArr:[String] = ["1","2","3","4","5","6","7","8","9","*","0","#"]
    var descriptionTextArr:[String] = ["","ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ","","+",""]
    @IBOutlet weak var searchTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
self.searchTF.setLeftPaddingPoints(30)
    }
    
    @IBAction func sideMenuBtnAction(_ sender: UIButton) {
        self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
}


extension DailVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
}
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    return numberArr.count
    
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Dail", for: indexPath)as!DailCollectionView
        cell.numberLB.text = numberArr[indexPath.row]
        cell.textLB.text =  descriptionTextArr[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            lay.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 0)
            lay.minimumInteritemSpacing = 1
            lay.minimumLineSpacing = 2
            collectionView.collectionViewLayout = lay
            let size = (collectionView.frame.size.width-13) / 3
        return CGSize(width:size, height:100.0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
            }
}

