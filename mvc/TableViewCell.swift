//
//  TableViewCell.swift
//  mvc
//
//  Created by R82 on 06/07/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var detailsLable: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
