//
//  AvengersListViewController.swift
//  Avengers
//
//  Created by Mukul More on 03/01/20.
//  Copyright © 2020 Mukul More. All rights reserved.
//

import UIKit

class AvengersListViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    private let avengers = Avenger.createAvengersList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.title = "Avengers"
        // Do any additional setup after loading the view.
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension AvengersListViewController : UITableViewDataSource, UITableViewDelegate {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avengers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let avengerInfo = avengers[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AvengersTableViewCell.reuseIdentifier) as? AvengersTableViewCell else {
            return UITableViewCell(style: .default, reuseIdentifier: "default")
        }
        cell.configCell(avenger: avengerInfo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "AvengerDetailViewController") as! AvengerDetailViewController
        detailViewController.selectedAvenger = self.avengers[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: false)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
}
