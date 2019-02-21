//
//  TableViewCell.swift
//  Responder
//
//  Created by Tamas Bara on 21.02.19.
//  Copyright © 2019 de.check24. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var index: Int? {
        didSet {
            if let index = index {
                button.setTitle("Button \(index)", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func foo() {
        let selector = #selector(ViewController.click(_:))
        if let target = target(forAction: selector, withSender: self) as? UIResponder {
            target.perform(selector, with: self)
        }
    }
}
