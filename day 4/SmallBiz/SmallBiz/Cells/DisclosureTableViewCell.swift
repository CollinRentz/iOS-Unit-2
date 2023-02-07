//
//  DisclosureTableViewCell.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/16/22.
//

import UIKit

class DisclosureTableViewCell: UITableViewCell {
    
    @IBOutlet weak var disclosureCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
