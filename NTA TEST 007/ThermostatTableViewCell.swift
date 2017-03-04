//
//  ThermostatTableViewCell.swift
//  NTA TEST 007
//
//  Created by krizzly on 3/4/17.
//  Copyright © 2017 krizzly. All rights reserved.
//

import UIKit

class ThermostatTableViewCell: UITableViewCell {

    // PROPERTIES
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
