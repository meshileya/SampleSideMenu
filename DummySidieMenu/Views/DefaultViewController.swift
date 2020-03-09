//
//  DefaultViewController.swift
//  DummySidieMenu
//
//  Created by Israel Meshileya on 09/03/2020.
//  Copyright © 2020 Israel. All rights reserved.
//

import Foundation
import UIKit
import SideMenu

class DefaultViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpSideMenu()
        view.backgroundColor = .red
        view.addSubview(versionLabel)
        
        versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        versionLabel.isUserInteractionEnabled = true
        versionLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onCall)))
    }
    
    func setUpSideMenu(){
        SideMenuManager.default.addPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
    }
    @objc func onCall(){
        let menu = SideMenuNavigationController(rootViewController: ViewController())
        SideMenuManager.default.rightMenuNavigationController = menu
        menu.leftSide = true
        menu.statusBarEndAlpha = 0
        present(menu, animated: true, completion: nil)
    }
    
    
    let versionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.text = "Click Me!"
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
}
