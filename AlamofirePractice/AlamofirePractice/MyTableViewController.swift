//
//  MyTableViewController.swift
//  AlamofirePractice
//
//  Created by Арсентий Халимовский on 25.04.2023.
//

import UIKit
import Alamofire

class MyTableViewController: UITableViewController {
    
    var array = [String]()
    let url = "http://data.fixer.io/api/latest"
    let key = "WdbIhL2RJUigoNgpKdH2fvOgpvUPXnlt"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPrice(url: "http://data.fixer.io/api/latest?access_key=WdbIhL2RJUigoNgpKdH2fvOgpvUPXnlt")
        
    }
    
    func getPrice(url: String) {
        AF.request(url).responseJSON { response in
            print(response)
        }
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

