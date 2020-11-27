//
//  TopUpDetailVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 30/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class TopUpDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
        
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension TopUpDetailVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
}
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   
    return 10
    
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopUpDetails", for: indexPath)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            lay.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 0)
            lay.minimumInteritemSpacing = 5
            lay.minimumLineSpacing = 5
            collectionView.collectionViewLayout = lay
            let size = (collectionView.frame.size.width-20) / 4
            return CGSize(width:size, height:70.0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
    }
}
