//
//  AppDelegate.swift
//  DummySidieMenu
//
//  Created by Israel Meshileya on 09/03/2020.
//  Copyright © 2020 Israel. All rights reserved.
//

import UIKit
import SideMenu

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow()
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = NavigationHelper.performNavigation(DefaultViewController())
        return true
    }



}

