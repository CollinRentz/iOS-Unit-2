//
//  DefeultItemCollectionViewCell.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/18/22.
//

import UIKit

class DefaultItemCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var defaultItemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 8
    }
}
