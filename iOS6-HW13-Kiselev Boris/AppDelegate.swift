//
//  AppDelegate.swift
//  iOS6-HW13-Kiselev Boris
//
//  Created by Борис Киселев on 31.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let firstViewController = ViewController()
        let firstNavigationControllet = UINavigationController(rootViewController: firstViewController)
        
        window?.rootViewController = firstNavigationControllet
        window?.makeKeyAndVisible()
        return true
    }


}

