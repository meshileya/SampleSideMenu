//
//  ViewController.swift
//  DummySidieMenu
//
//  Created by Israel Meshileya on 09/03/2020.
//  Copyright © 2020 Israel. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        view.addSubview(versionLabel)
        
        versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    let versionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.text = "Legal"
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()


}

