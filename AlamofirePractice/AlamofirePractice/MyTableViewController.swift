//
//  MyTableViewController.swift
//  AlamofirePractice
//
//  Created by Арсентий Халимовский on 25.04.2023.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var array = ["example"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // some code here
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }
}

