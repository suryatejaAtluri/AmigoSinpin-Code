//
//  MenuTVCell.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 18/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class MenuTVCell: UITableViewCell {

    @IBOutlet weak var cameraImg: UIImageView!
    @IBOutlet weak var rightArrow: UIImageView!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
       @IBOutlet weak var imgHeightConstrain: NSLayoutConstraint!
    @IBOutlet weak var displayImg: UIImageView!
    @IBOutlet weak var nameLB: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
