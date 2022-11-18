//
//  SettingsTableViewCell.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/18/22.
//

import UIKit

protocol SettingChangedProtocol: AnyObject {
    func settingToggled(item: SettingsItem)
}

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingsNameLabel: UILabel!
    @IBOutlet weak var settingsSwitch: UISwitch!
    
    weak var delegate: SettingChangedProtocol?
    
    var item: SettingsItem! {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        settingsNameLabel.text = item.settingTitle
        settingsSwitch.isOn = item.isActive
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func switchToggled(_ sender: Any) {
        delegate?.settingToggled(item: item)
    }
}
