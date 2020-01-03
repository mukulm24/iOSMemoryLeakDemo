//
//  AvengersTableViewCell.swift
//  Avengers
//
//  Created by Mukul More on 03/01/20.
//  Copyright © 2020 Mukul More. All rights reserved.
//

import UIKit

class AvengersTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avengerImageView: UIImageView!
    
    static let reuseIdentifier = "AvengersTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(avenger: Avenger) {
        self.nameLabel.text = avenger.name
        self.avengerImageView.image =  UIImage.init(named: "\(avenger.imageName).jpg")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
