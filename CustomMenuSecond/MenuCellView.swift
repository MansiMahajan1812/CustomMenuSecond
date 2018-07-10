//
//  MenuCellView.swift
//  CustomMenuSecond
//
//  Created by Mansi Mahajan on 7/3/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class MenuCellView: UITableViewCell {

    
    @IBOutlet weak var labelSet: UILabel!
    @IBOutlet weak var imageSet: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
