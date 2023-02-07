//
//  DefeultItemCollectionViewCell.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/16/22.
//

import UIKit

class DefaultItemCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var defaultItemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 8
    }
}
