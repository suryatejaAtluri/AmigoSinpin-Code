//
//  TabBarConrollers.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 18/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class TabBarConrollers: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 2
        self.tabBar.unselectedItemTintColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
}
