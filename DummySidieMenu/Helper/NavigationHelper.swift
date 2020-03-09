//
//  NavigationHelper.swift
//  DummySidieMenu
//
//  Created by Israel Meshileya on 09/03/2020.
//  Copyright © 2020 Israel. All rights reserved.
//

import Foundation
import UIKit

class NavigationHelper {
    
    static func navigationController (_ vc: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: vc)
        if #available(iOS 11, *){
            navigationController.navigationBar.prefersLargeTitles = false
        }
        navigationController.navigationBar.tintColor = UIColor.orange
        
        return navigationController;
    }
    
    static func performNavigation(_ vc: UIViewController) -> UIViewController {
        let navigationCon = NavigationHelper.navigationController(vc)
        navigationCon.modalPresentationStyle = .fullScreen
        return navigationCon
    }
    
}
