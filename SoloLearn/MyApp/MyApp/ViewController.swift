//
//  ViewController.swift
//  MyApp
//
//  Created by JXT on 2018/10/24.
//  Copyright © 2018 JXT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: methods
    @IBAction func setLabelText(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
    }
    
    
}

