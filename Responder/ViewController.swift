//
//  ViewController.swift
//  Responder
//
//  Created by Tamas Bara on 21.02.19.
//  Copyright © 2019 de. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "foo")
        tableView.dataSource = self
    }
    
    @objc func click(_ sender: TableViewCell) {
        print("index: \(sender.index ?? 0)")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "foo") as? TableViewCell else {
            return UITableViewCell()
        }
        
        cell.index = indexPath.row
        return cell
    }
}

