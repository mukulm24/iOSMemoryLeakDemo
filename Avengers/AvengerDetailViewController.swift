//
//  AvengerDetailViewController.swift
//  Avengers
//
//  Created by Mukul More on 03/01/20.
//  Copyright © 2020 Mukul More. All rights reserved.
//

import UIKit

class AvengerDetailViewController: UIViewController {

    @IBOutlet weak var avengerImageView: RoundImageView!
    @IBOutlet weak var avengerNameLabel: UILabel!
    
    var selectedAvenger: Avenger?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let selectedAvenger = selectedAvenger {
             self.setupView(with: selectedAvenger)
        }
    }
    
    func setupView(with avenger: Avenger) {
        self.avengerImageView.delegate = self
        self.avengerImageView.image =  UIImage.init(named: "\(avenger.imageName).jpg")
        self.avengerNameLabel.text = avenger.name
    }

}
