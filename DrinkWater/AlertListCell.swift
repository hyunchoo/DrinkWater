//
//  AlertListCell.swift
//  DrinkWater
//
//  Created by 🙈 🙊 on 2022/05/29.
//

import UIKit

class AlertListCell: UITableViewCell {

    @IBOutlet weak var meridiemLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var alertSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    @IBAction func alertSwitchValueChange(_ sender: UISwitch) {
        guard let data = UserDefaults.standard.value(forKey: "alerts") as? Data,
              var alerts = try? PropertyListDecoder().decode([Alert].self, from: data) else { return }
        alerts[sender.tag].isOn = sender.isOn
        UserDefaults.standard.set(try? PropertyListEncoder().encode(alerts), forKey: "alerts")
              
    }
}
