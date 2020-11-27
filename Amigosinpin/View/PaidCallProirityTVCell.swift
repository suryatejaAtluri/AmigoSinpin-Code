//
//  PaidCallProirityTVCell.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class PaidCallProirityTVCell: UITableViewCell {

    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var mainLB: UILabel!
    @IBOutlet weak var displayImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
