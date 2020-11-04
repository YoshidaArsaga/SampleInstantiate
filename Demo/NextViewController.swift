//
//  NextViewController.swift
//  Demo
//
//  Created by 吉田寛規 on 2020/11/04.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerXibCell("TableViewCell")
    }
    
}

extension NextViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.instantiateXibCell("TableViewCell", indexPath)
        return cell
    }
    
    
}
