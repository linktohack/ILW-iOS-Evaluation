//
//  PostTableViewCell.swift
//  ILW-iOS
//
//  Created by Quang-Linh LE on 15/02/2019.
//  Copyright © 2019 Quang-Linh LE. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var postView: PostView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
