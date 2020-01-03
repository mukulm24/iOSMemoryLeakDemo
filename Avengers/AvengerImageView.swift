//
//  AvengerImageView.swift
//  Avengers
//
//  Created by Mukul More on 03/01/20.
//  Copyright © 2020 Mukul More. All rights reserved.
//

import Foundation
import UIKit

class RoundImageView: UIImageView {
    
    var delegate : Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.convertToRoundedImageView()
    }
    
    func convertToRoundedImageView() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height/2
    }
    
}
